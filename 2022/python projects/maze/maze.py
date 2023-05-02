#pip install pyamaze
from pyamaze import maze,agent,COLOR


# SIZE
m=maze(20,20)
m.CreateMaze(loopPercent=50)

#COLOR
# m.CreateMaze(theme=COLOR.light)



#PATHを探す
a=agent(m,filled=True,footprints=True)
m.tracePath({a:m.path})

#実行
m.run()