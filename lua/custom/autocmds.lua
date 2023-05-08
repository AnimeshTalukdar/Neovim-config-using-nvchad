-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd([[
	augroup run_file
		autocmd BufEnter *.java let @b=":w\<CR>:vsp | terminal !javac %; java `basename % .java`\<CR>"
		autocmd BufEnter *.py let @b=":w\<CR>:vsp |terminal python3 %\<CR>i"
		autocmd BufEnter *.asm let @b=":w\<CR> :!nasm -f elf64 -o out.o % && ld out.o -o a.out \<CR> | :vsp |terminal ./a.out\<CR>i"
		autocmd BufEnter *.cpp let @b=":w\<CR> :!g++ -std=c++17 -O3 %\<CR> | :vsp |terminal ./a.out\<CR>i"
		autocmd BufEnter *.c let @b=":w\<CR> :!gcc -O3 -std=gnu99 -Wno-deprecated-declarations -pedantic -Wall -Wextra %\<CR> | :vsp |terminal ./a.out\<CR>i"
		autocmd BufEnter *.go let @b=":w\<CR> :vsp | terminal go run % \<CR>i"
		autocmd BufEnter *.js let @b=":w\<CR> :vsp | terminal node % \<CR>i"
		autocmd BufEnter *.html let @b=":silent !open -a arc % \<CR>"
    autocmd BufEnter *.sh let @b=":w\<CR> :vsp |terminal zsh %\<CR>"   
		autocmd BufEnter *.rs let @b=":w\<CR> :!rustc % -o a.out\<CR> | :vsp |terminal ./a.out\<CR>i"
    
    autocmd BufEnter * let @s=":w\<CR>:vsp |terminal live-server ./ --open=%\<CR>i"
	augroup end
]])
