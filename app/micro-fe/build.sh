PROJECT_NAME=$1
EMAIL=$2

# manage backend packages with poetry
curl -sSL https://install.python-poetry.org | python3 -
export PATH="/root/.local/bin:$PATH"
poetry init -n --author $EMAIL
poetry add fastapi
poetry add pytest --dev
poetry install

# manage frontend packages with npm
npm init -y
npm install react
npm install jest --save-dev
echo "node_modules/" >> .gitignore
npm i

# TODO more project setup

# configure git & make first commit
git init
git config --global user.email ${EMAIL}
git add -A && git commit -m "Generate micro-fe project"