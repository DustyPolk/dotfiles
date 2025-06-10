#!/bin/bash
# Neovim Configuration Dependency Installation Script
# This script automatically installs dependencies based on the system package manager

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Logging functions
log_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Detect package manager and install dependencies
install_dependencies() {
    if command -v apt &> /dev/null; then
        log_info "Detected APT package manager (Ubuntu/Debian)"
        sudo apt update
        
        # Install core dependencies first
        sudo apt install -y neovim git curl unzip ripgrep fd-find make gcc cmake python3 xclip
        
        # Handle Node.js/npm separately due to potential package conflicts
        if ! command -v node &> /dev/null && ! command -v nodejs &> /dev/null; then
            log_info "Installing Node.js..."
            # Try snap first (usually works better on Ubuntu)
            if command -v snap &> /dev/null; then
                log_info "Installing Node.js via snap..."
                sudo snap install node --classic
            else
                # Fallback to NodeSource repository
                log_info "Installing Node.js via NodeSource repository..."
                curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
                sudo apt install -y nodejs
            fi
        else
            log_info "Node.js already installed, skipping..."
        fi
        
    elif command -v dnf &> /dev/null; then
        log_info "Detected DNF package manager (Fedora/RHEL)"
        sudo dnf install -y neovim git curl unzip ripgrep fd-find make gcc cmake python3 nodejs npm xclip
        
    elif command -v pacman &> /dev/null; then
        log_info "Detected Pacman package manager (Arch Linux)"
        sudo pacman -S --noconfirm neovim git curl unzip ripgrep fd make gcc cmake python nodejs npm xclip
        
    elif command -v brew &> /dev/null; then
        log_info "Detected Homebrew package manager (macOS)"
        brew install neovim git curl unzip ripgrep fd make gcc cmake python3 node
        
    elif command -v apk &> /dev/null; then
        log_info "Detected APK package manager (Alpine Linux)"
        sudo apk add neovim git curl unzip ripgrep fd make gcc cmake python3 nodejs npm xclip
        
    else
        log_error "No supported package manager found!"
        log_error "Please install dependencies manually using your system's package manager:"
        log_error "neovim, git, curl, unzip, ripgrep, fd-find, make, gcc, cmake, python3, nodejs, npm"
        exit 1
    fi
}

# Check if Neovim is already installed and meets minimum version
check_neovim_version() {
    if command -v nvim &> /dev/null; then
        local version=$(nvim --version | head -n1 | grep -oE 'v[0-9]+\.[0-9]+\.[0-9]+' | sed 's/v//')
        local major=$(echo $version | cut -d. -f1)
        local minor=$(echo $version | cut -d. -f2)
        
        if [[ $major -gt 0 ]] || [[ $major -eq 0 && $minor -ge 9 ]]; then
            log_info "Neovim $version meets minimum requirements (>=0.9.0)"
            return 0
        else
            log_warn "Neovim $version is below minimum requirements (>=0.9.0)"
            return 1
        fi
    else
        log_warn "Neovim not found"
        return 1
    fi
}

# Verify installations
verify_dependencies() {
    local missing=()
    
    # Core dependencies
    for cmd in nvim git curl unzip rg fd make gcc cmake python3 node npm; do
        if ! command -v $cmd &> /dev/null; then
            # Handle fd-find vs fd naming
            if [[ $cmd == "fd" ]] && command -v fdfind &> /dev/null; then
                continue
            fi
            missing+=($cmd)
        fi
    done
    
    if [[ ${#missing[@]} -eq 0 ]]; then
        log_info "All dependencies successfully installed!"
        return 0
    else
        log_error "Missing dependencies: ${missing[*]}"
        return 1
    fi
}

# Main installation process
main() {
    log_info "Starting Neovim configuration dependency installation..."
    
    # Check if already installed
    if check_neovim_version; then
        log_info "Neovim already installed with compatible version"
    fi
    
    # Install dependencies
    install_dependencies
    
    # Verify installation
    if verify_dependencies; then
        log_info "Installation completed successfully!"
        log_info ""
        log_info "Next steps:"
        log_info "1. Start Neovim with 'nvim'"
        log_info "2. Plugins will be automatically installed by lazy.nvim"
        log_info "3. Use ':checkhealth' to verify everything is working"
        log_info "4. Check README.md for keybinding reference"
    else
        log_error "Installation completed with errors. Please check missing dependencies."
        exit 1
    fi
}

# Run main function
main "$@"