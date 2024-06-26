# labelImg Fork


## 运行

```bash
# 构建镜像 labelimg:v1
git clone 
cd labelImg
docker build -t labelimg:v1 .

# Run the container
docker run -it \
--user $(id -u) \
-e DISPLAY=unix$DISPLAY \
--volume="/home/$USER:/home/$USER" \
--volume="/etc/group:/etc/group:ro" \
--volume="/etc/passwd:/etc/passwd:ro" \
--volume="/etc/shadow:/etc/shadow:ro" \
--volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
-v /tmp/.X11-unix:/tmp/.X11-unix \
labelimg:v1
# or 
# cd labelImg 目录下 
docker compose up
```

## 对源码修改的部分

- 修复无法导入 pathlib 问题，将 pathlib 源码放到了根目录`pathlib.py`文件中
- 修复无法导入图片，提示 `Error opening file` 问题，