# Archiso

## Configuration

```sh
## Build command
sudo mkarchiso -v -w /path/to/work_dir -o /path/to/work_dir/out .

## Mirrorlist
# pacman -S pacman-contrib to get rankmirrors
curl -s "https://archlinux.org/mirrorlist/?country=CN&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 -

Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch
Server = https://mirrors.wsyu.edu.cn/archlinux/$repo/os/$arch
Server = https://mirrors.sjtug.sjtu.edu.cn/archlinux/$repo/os/$arch
Server = https://mirrors.bfsu.edu.cn/archlinux/$repo/os/$arch
Server = https://mirrors.xjtu.edu.cn/archlinux/$repo/os/$arch
```

## Docs

1. https://wiki.archlinux.org/title/Archiso
2. https://en.wikipedia.org/wiki/EROFS
3. https://en.wikipedia.org/wiki/SquashFS
