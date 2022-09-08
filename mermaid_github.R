library(DiagrammeR)
mermaid("
sequenceDiagram
  Working Directory->> Staging Area: git add
  Note left of Staging Area: `git add .` adds all changes
  Staging Area-->> Working Directory: git rm
  Note left of Staging Area: `git rm .` unstages all changes
  Staging Area->>Local Repository: git commit
  Local Repository->>Remote Repository: git push
  Note left of Remote Repository: pushed to GitHub
  Remote Repository->>Local Repository: git pull
  Local Repository->>Working Directory: git checkout
  Remote Repository->>Working Directory: git clone
") ->graph

grViz(graph,engine = 'mermaid')
  
graph %>%
  export_graph(
    file_name = "mypng.png",
    file_type = "PNG"
  )
