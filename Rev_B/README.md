## What is these patches??

Before I pushed the project files on GitHub, I had individual folders for each revision. So instead of having those folders uploaded, I decided to make them based on the Rev_B folder as different patches. To get the board, run the following command:

```
cd Rev_B
patch -p0 -t -R -E < ../revb*.patch
```
