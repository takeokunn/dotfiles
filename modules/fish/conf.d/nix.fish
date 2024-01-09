if test -d /nix/var/nix/profiles/default/bin
    fish_add_path /nix/var/nix/profiles/default/bin
end

if test -d ~/.nix-profile/bin
    fish_add_path ~/.nix-profile/bin
end

if type -q nix
    set -gx NIXPKGS_ALLOW_UNFREE 1
    set -gx NIXPKGS_ALLOW_INSECURE 1
    set -gx NIXPKGS_ALLOW_UNSUPPORTED_SYSTEM 1
end
