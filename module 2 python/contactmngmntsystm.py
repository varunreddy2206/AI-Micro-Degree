import json
import os

def menu():
    print("contact list")
    print("load contact")
    print("save contact")
    print("1. add contact:")
    print("2. view contact:")
    print("3. upate contact:")
    print("4.delete contact:")
    # choice = input("enter your choice:")
contacts_file= 'contacts_data.json'

def load_contact():
    if not os.path.exists(contacts_file):
        return{}
    try:
        with open(contacts_file,'r') as file:
            return json.load(file)
    except Exception as e:
        print(f"error loading contacts data:{e}")
        return{}
    
def save_contact(contacts):
    try:
        with open(contacts_file,'w') as file:
            json.dump(contacts,file)
    except Exception as e:
        print(f"error saving contacts data: {e}")

def add_contact(contacts,name,phone,email):
    if name in contacts:
        print("contact already exists.use update option to modify.")
    else:
        contacts[name]={'phone': phone,'email' : email}
        save_contact(contacts)
        print(f"contact '{name}' added successfully")

def view_contact(contacts):
    if not contacts:
        print("no contacts found.")
        return
    for name,details in contacts.items():
        print(f"Name:{name},Phone:{details['phone']},Email:{details['email']}")

def update_contact(contacts,name,phone=None,email=None):
    if name not in contacts:
        print(f"contact '{name}' not found.")
        return
    if phone:
        contacts[name]['phone'] = phone
    if email:
        contacts[name]['email'] = email
    save_contact(contacts)
    print(f"contact '{name}' updated successfully")

def delete_contact(contacts,name):
    if name not in contacts:
        print(f"contact '{name}' not found")
        return
    del contacts[name]
    save_contact(contacts)
    print(f"contact '{name}' deleted successfully")

def main():
    contacts= load_contact()
    while True:
        choice =input("enter your choice:")
        if choice =='1':
            name=input('enter the contact name:')
            phone=input('eneter contact phone number:')
            email=input("eneter the contact email:")
            add_contact(contacts,name,phone,email)
        elif choice =='2':
            view_contact(contacts)
        elif choice =='3':
            name=input("enter the contact name to update: ")
            phone=input("enter the new phone number (leave blank to keep current):")
            email=input("enter the new email (leave blank to current):")
            update_contact(contacts,name,phone if phone else None,email if email else None)
        elif choice=='4':
            name=input("enter the contact name to delete:")
            delete_contact(contacts,name)
        elif choice=='5':
            print("existing the system. goodbye")
            break
        else:
            print("invalid choice.please enter a number between 1 and 5.")



if __name__== "__main__":
          main()







            



    
