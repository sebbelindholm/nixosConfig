{ pkgs, ... }:

{
    services = {
        openssh = {
            enable = true;
            settings = {
                PermitRootLogin = "no";
                PasswordAuthentication = false;
            };
        };
    };

    users.users."sebastian".openssh.authorizedKeys.keyFiles = [
        ../host/desktop/ssh/authorized_keys
    ];
}