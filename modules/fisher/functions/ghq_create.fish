function ghq_create
    cd (ghq create (echo $argv)) | gh repo create (echo $argv) --public -y
    echo "# "(echo $argv) >> README.md
    git init
    git add README.md
    git commit -m "first commit"
    git branch -M main
    git remote add origin git@github.com:takeokunn/(echo $argv).git
    git push -u origin main
end
