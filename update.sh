echo Creating new distributions...
python3 setup.py sdist bdist_wheel
echo Uploading new version to Pypi...
twine upload dist/* --skip-existing

echo Adding new items to Git...
git add -A
echo What is your commit comment?
read comment
echo Committing changes to Git with $comment as the comment...
git commit -m $comment
echo Pushing to GitHub repository...
git push