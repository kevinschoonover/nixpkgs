{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "envconsul";
  version = "0.12.1";
  rev = "v{version}";

  src = fetchFromGitHub {
    inherit rev;
    owner = "hashicorp";
    repo = "envconsul";
    sha256 = "1pni0m9kwpmx5909lflqb1p0hf7mi6gxxy2r5iaqfdgjx4crspx1";
  };

  vendorSha256 = "12j7v2n14kh99i1i6a9mflhdgvlfw6nrgshz5585hibk3wfpbaci";

  meta = with lib; {
    homepage = "https://github.com/hashicorp/envconsul/";
    description = "Read and set environmental variables for processes from Consul";
    platforms = platforms.linux ++ platforms.darwin;
    license = licenses.mpl20;
    maintainers = with maintainers; [ pradeepchhetri ];
  };
}
