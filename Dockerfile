# 使用 Alpine 作为基础镜像
FROM python:3-alpine

# 设置工作目录
WORKDIR /app

# 复制项目文件到工作目录
COPY . /app

# 安装项目依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露 Flask 应用的端口
EXPOSE 5000

# 启动 API 模式
CMD ["python", "main.py", "--mode", "api"]
