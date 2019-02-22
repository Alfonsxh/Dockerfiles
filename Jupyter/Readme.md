# Jupyter Python3

主要用于jupyter notebook。

使用：

```shell
$ docker container run -dit --name jupyter_notebook  -p 8888:8888 alfonsxh/jupyter
5590e73d8ba3aa877d8ab02ab81d5ea38fd9e89360c1fd8c0f47d2e673e3490d
$ docker container logs jupyter_notebook 
[I 06:25:39.358 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
[I 06:25:39.679 NotebookApp] Serving notebooks from local directory: /
[I 06:25:39.679 NotebookApp] The Jupyter Notebook is running at:
[I 06:25:39.679 NotebookApp] http://(5590e73d8ba3 or 127.0.0.1):8888/?token=d5e8a0c1e7adb5d04e1c5ef6ef20def05d8c6a5b7bad84cb
[I 06:25:39.679 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 06:25:39.683 NotebookApp] 
    
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://(5590e73d8ba3 or 127.0.0.1):8888/?token=d5e8a0c1e7adb5d04e1c5ef6ef20def05d8c6a5b7bad84cb
```

在浏览器中打开最后出现的地址。

***jupyter([dockerfile](https://github.com/Alfonsxh/Dockerfiles/blob/master/Jupyter/Dockerfile))***
