PATH:=$(PATH):/home/joost/prj/madparts

all:
	cat README.md.in > README.md
	madparts ls >> README.md
