--==========================================================================================================================
-- Config
--==========================================================================================================================
- test2
--==========================================================================================================================
-- Root Folder 연결
--==========================================================================================================================
Administrator@DESKTOP-E7F3VBA MINGW64 ~
->>> $ pwd
/c/Users/Administrator

Administrator@DESKTOP-E7F3VBA MINGW64 ~
->>> $ cd d:

Administrator@DESKTOP-E7F3VBA MINGW64 /d
->>> $ cd My_Git

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git
->>> $ ls -lrt
total 4
drwxr-xr-x 1 Administrator 197121 0 Jan  4 13:07 cmder/
-rw-r--r-- 1 Administrator 197121 0 Jan  4 13:54 MyScript.sql
drwxr-xr-x 1 Administrator 197121 0 Jan  4 14:12 github/
drwxr-xr-x 1 Administrator 197121 0 Jan  4 14:12 Test/

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git
->>> $ cd github

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github
->>> $ ls -lrt
total 0

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github
->>> $ pwd
/d/My_Git/github

----------------------------------------------------------------------------------------
-- git init
----------------------------------------------------------------------------------------
Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github
->>> $ git init
Initialized empty Git repository in D:/My_Git/github/.git/

----------------------------------------------------------------------------------------
-- git remote connection
----------------------------------------------------------------------------------------
Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)
->>> $ git remote add origin https://github.com/zoomok/docker-demo.git

--==========================================================================================================================
-- Push
--==========================================================================================================================
----------------------------------------------------------------------------------------
-- git status : 현재 로컬 폴더와 서버 Git과의 상태를 check
----------------------------------------------------------------------------------------
Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)
->>> $ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        Success_Message_memoming.txt

nothing added to commit but untracked files present (use "git add" to track)

----------------------------------------------------------------------------------------
-- git add . : 변경된 파일들을 모두 Tracking
----------------------------------------------------------------------------------------
Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)
->>> $ git add .

----------------------------------------------------------------------------------------
-- git commit -m "message"	: 인식 할 수 있는 commit 추가
----------------------------------------------------------------------------------------
Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)
->>> $ git commit -m "Hello Github"

[master (root-commit) cf2b47f] Hello Github
 1 file changed, 5 insertions(+)
 create mode 100644 Success_Message_memoming.txt

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)

----------------------------------------------------------------------------------------
-- git push origin +master	: 실제로 Git에 Push
----------------------------------------------------------------------------------------
Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)
->>> git push origin master

-- In case of error
Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_git/github (master)
->>> $ git push origin master
To https://github.com/zoomok/docker-demo.git
 ! [rejected]        master -> master (non-fast-forward)
error: failed to push some refs to 'https://github.com/zoomok/docker-demo.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_git/github (master)
->>> $ git reset --mixed origin/master
Unstaged changes after reset:
M       Success_Message_memoming.txt

--==========================================================================================================================
-- Pull
--==========================================================================================================================
----------------------------------------------------------------------------------------
- 다른 사람 git 가져오기
----------------------------------------------------------------------------------------
Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git
->>> $ mkdir TEST

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git (master)
->>> $ cd TEST

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git
->>> $ git init
Initialized empty Git repository in D:/My_Git/.git/

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git (master)
->>> $ git remote add origin https://github.com/memoming/memoming_gitTest

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/TEST (master)
->>> $ git pull origin master
remote: Enumerating objects: 15, done.
remote: Total 15 (delta 0), reused 0 (delta 0), pack-reused 15
Unpacking objects: 100% (15/15), 3.06 KiB | 7.00 KiB/s, done.
From https://github.com/memoming/memoming_gitTest
 * branch            master     -> FETCH_HEAD
 * [new branch]      master     -> origin/master

----------------------------------------------------------------------------------------
- Update file at Local PC and push to Github Server
----------------------------------------------------------------------------------------
Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)
->>> $ pwd
/d/My_Git/github

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)
->>> $ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   Success_Message_memoming.txt

no changes added to commit (use "git add" and/or "git commit -a")

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)
->>> $ git add . 		 	--> All files
->>> $ git add index.html	--> 1 file only

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)
->>> $ git commit -m "3rd commit"
[master 0a99b42] 3rd commit
 1 file changed, 3 insertions(+), 2 deletions(-)

Administrator@DESKTOP-E7F3VBA MINGW64 /d/My_Git/github (master)
->>> $ git push origin master
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 347 bytes | 347.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/zoomok/docker-demo.git
   648b348..0a99b42  master -> master




































