terraform {
  backend "local" {
    path = "state/terra.tfstate"
    
  }
}
provider "local" {
  
}
provider "random" {
  
}