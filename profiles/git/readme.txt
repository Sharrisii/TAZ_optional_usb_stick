For setting general identity:
read https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup
You no longer need to do 
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
since already set in .gitconfig file. 
However, do change this data to your actual e-mail and user name in the .gitconfig file.

For github PGP:
Read how to use this at https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work

For ghi token:
read through https://github.com/stephencelis/ghi/wiki/FAQ
You no longer need to do git config --global ghi.token 036a0402c51c9a3f7de405793d12cffe6ae354d5
since already set in .gitconfig file
You do need to change the token in the .gitconfig file to the token you first need to make yourself via your github account.