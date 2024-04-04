
set NAME=venv-fem
if not exist %NAME%\ (
	echo Create virtual env. %NAME% ...
	python -m venv %NAME%
	%NAME%\Scripts\activate.bat
	python -m pip install --upgrade pip
	python -m pip install -r requirements.txt
) else (
	echo Virtual env. %NAME% exists
	%NAME%\Scripts\activate.bat
)
