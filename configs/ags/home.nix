{inputs, pkgs, ... }:

{
	programs.ags = {
		enable = true;
		configDir = ./config;

		extraPackages = with pkgs; [
			libsoup_3
		];
	};
	
	home.packages = with pkgs; [
		sassc
		(python311.withPackages (p: [ p.python-pam ]))
  	];
}
