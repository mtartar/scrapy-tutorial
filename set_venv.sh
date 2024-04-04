
export NAME=venv-fem

if [ -d "$NAME" ];
then
    echo "Directory $NAME for virtual env. already exists"
    source $NAME/bin/activate
else
    echo "Directory $NAME for virtual env. does NOT exist: creating virtual env. now ..."
    python -m venv $NAME
    source $NAME/bin/activate
    python -m pip install --upgrade pip
    python -m pip install -r requirements.txt
fi
