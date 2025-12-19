# ChromaDB Admin 启动函数
# 将此函数添加到 ~/.zshrc 文件中

chromadb-admin() {
    local PROJECT_DIR="/Users/lilinye/githubProjects/chromadb-admin"
    
    # 检查项目目录是否存在
    if [ ! -d "$PROJECT_DIR" ]; then
        echo "❌ 错误: 项目目录不存在: $PROJECT_DIR"
        return 1
    fi
    
    # 切换到项目目录
    cd "$PROJECT_DIR" || return 1
    
    # 检查 node_modules 是否存在，如果不存在则安装依赖
    if [ ! -d "node_modules" ]; then
        echo "📦 检测到未安装依赖，正在安装..."
        yarn install
    fi
    
    # 启动开发服务器
    echo "🚀 正在启动 ChromaDB Admin..."
    echo "📍 项目目录: $PROJECT_DIR"
    echo "🌐 访问地址: http://localhost:3001"
    echo ""
    yarn dev
}

