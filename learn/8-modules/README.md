# Minimal recommended module structure
    $ tree minimal-module/
    .
    ├── README.md
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf

# More complete module structure
    $ tree complete-module/
    .
    ├── README.md
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── ...
    ├── modules/
    │   ├── nestedA/
    │   │   ├── README.md
    │   │   ├── variables.tf
    │   │   ├── main.tf
    │   │   ├── outputs.tf
    │   ├── nestedB/
    │   ├── .../
    ├── examples/
    │   ├── exampleA/
    │   │   ├── main.tf
    │   ├── exampleB/
    │   ├── .../

# Module Block vs Module Source
    - We define the Module Block which is a collection of terraform manifest files and then refer those manifests (module) through source attribute