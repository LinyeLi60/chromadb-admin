#!/bin/bash
# ChromaDB Admin 启动脚本
# 可以在任何位置运行此脚本来启动项目

PROJECT_DIR="/Users/lilinye/githubProjects/chromadb-admin"

# 检查项目目录是否存在
if [ ! -d "$PROJECT_DIR" ]; then
    echo "错误: 项目目录不存在: $PROJECT_DIR"
    exit 1
fi

# 切换到项目目录
cd "$PROJECT_DIR" || exit 1

# 检查 node_modules 是否存在，如果不存在则安装依赖
if [ ! -d "node_modules" ]; then
    echo "检测到未安装依赖，正在安装..."
    yarn install
fi

# 启动开发服务器
echo "正在启动 ChromaDB Admin..."
yarn dev

