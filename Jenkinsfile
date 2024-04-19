pipeline {
    agent any
    parameters {
        string(name:"_proceso_nombre", DefaultValue:"bash", description: "Busqueda proceso bash")
    }
    stages {
        stage("Script") {
            step {
                script {
                    sh "chmod +x script-bash-room1"
                    sh "./main"${params._proceso_nombre}"
                    
                }
            }
        }
    }
}