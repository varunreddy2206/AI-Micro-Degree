# import os

# dir=("AIPA")

# try:
#    os.makedirs(dir)
#    print(f'folder created: {dir}')
# except FileExistsError:
#    print(f'folder already exists.')
# finally:
#    print("code is executed ")

# cur_name="ADIT"
# new_name="AIPA"

# try:   
#    os.rename(cur_name,new_name)
# except FileNotFoundError:
#    print("the directory not found")

# import shutil

# dir_del="AIPA"
# try:
#     shutil.rmtree(dir_del)
#     print("directory deleted")
# except FileNotFoundError:
#     print("folder does not exist.")
# except PermissionError:
#     print("permission denied ")
# except Exception as e:
#     print(f'an error occured {e}')

# import os

# dir='xyz'
# try:
#     os.makedirs(dir,exist_ok=True)

#     file_name="varun.txt"

#     file_path=os.path.join(dir,file_name)

#     with open(file_path,"w") as file:
#         file.write("hi ra venkati , ni problem thatvatha solve chestha ")
#         print(f"File: '{file_name}'created successfully in {dir}'")
# except(ValueError,FileNotFoundError,PermissionError) as e:
#     print(f"an error occured,{e}")

# import os

# dir="."

# with os.scandir(dir) as entries:
#     print(f"content of the folder are :'{dir}'")
#     for entry in entries:
#         print(entry.name)

# import os

# dir=os.listdir()
# print("contents of folder are : ",dir)

# dir=os.getcwd()
# print("working folder is : ",dir)

# import shutil
# dir_copy='xyz'
# try:
#     shutil.copytree(dir_copy,'abc')
#     print("directory copied successfully")
# except Exception as e:
#     print(f"an error occured")

# import shutil
# dir_move='xyz'
# try:
#     shutil.move(dir_move,'abc')
#     print("directory moved successfully")
# except Exception as e:
#     print(f"an error occured")

# import shutil
# dir_rmtree='xyz'
# try:
#     shutil.rmtree(dir_rmtree,'abc')
#     print("directory rmtree successfully")
# except Exception as e:
#     print(f"an error occured")


##########################################################################

