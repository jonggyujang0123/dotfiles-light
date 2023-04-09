```bash
git config --global user.email "your mail"
git config --global user.name "your name"
git config --global core.editor vim


git init # 맨처음
git status # 변경파일 리스트
git add <file> # 변경파일에 파일을 더함 ex) git add .
# ".gitignore" 파일안에 무시할것들 추가 (git에서도 가능)
git commit -m "<message>" # git 커밋 
git log # 커밋 로그 보기 options : --online |  --graph
git stash # 수정사항 취소 (마지막 commit지점으로 되돌아감)
## SSH 등록
ssh-keygen
# $HOME/.ssh/id-rsa.pub copy --> git-settings-ssh paste

git remote add origin <URL> # URL은 repository의 url (ssh url)
git remote rm origin # 제거 하는 
git push -u origin master # 그담부터 origin master필요 X
git pull # 

# Tag달아서 push하기
git tag -a v0.1 -m <message>
git push -tags
```
