pipeline {
    agent any
    parameters {
        string(name:"_proceso_nombre", DefaultValue:"bash", description: "Busqueda proceso bash")
    }
    stages {
        stage("Script") {
            step {
                script {
                    sh "chmod +x scriptbash.sh"
                    sh "./main.sh '{${params._proceso_nombre}' "
                    
                }
            }
        }
    }
}