#!/bin/bash
# 安装 ChromaDB Admin 全局命令

ZSH_RC="$HOME/.zshrc"
FUNCTION_DEFINITION='

# ChromaDB Admin 启动函数
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
'

# 检查是否已经存在
if grep -q "chromadb-admin()" "$ZSH_RC" 2>/dev/null; then
    echo "⚠️  命令已经存在于 ~/.zshrc 中"
    echo "   如果要重新安装，请先手动删除相关代码"
    exit 0
fi

# 添加到 .zshrc
echo "$FUNCTION_DEFINITION" >> "$ZSH_RC"

echo "✅ 已成功添加 chromadb-admin 命令到 ~/.zshrc"
echo ""
echo "📝 请运行以下命令使配置生效："
echo "   source ~/.zshrc"
echo ""
echo "🚀 之后你可以在任何位置运行以下命令启动项目："
echo "   chromadb-admin"

