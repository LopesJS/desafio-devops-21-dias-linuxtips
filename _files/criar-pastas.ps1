# Estrutura de crição de pastas para o Projeto
# Desafio DevOps - 21 Dias (16/06/2025 à 06/07/2025) LinuxTips

# Quantidade de pastas
$quantidade = 21
$nomeBase = "Dia-"
# Alterar o caminho na máquina
$caminhoBase = "C:\temp"

for ($i = 1; $i -le $quantidade; $i++) {
  $nomePasta = "{0}{1}" -f $nomeBase, $i
  $caminhoCompleto = Join-Path -Path $caminhoBase -ChildPath $nomePasta
  New-Item -ItemType Directory -Path $caminhoCompleto
}

















# by xing devops @2025