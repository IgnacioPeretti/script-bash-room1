pipeline {
    agent any
    parameters {
        string(name:"proceso_nombre", defaultValue:"bash", description: "Busqueda proceso bash")
    }
    stages {
        stage("Ejecutando el script") {
            steps {
                script {
                    sh 'chmod +x ./main.sh'
                    sh "./main.sh ${params.proceso_nombre}"
                }
            }
        }
    }
} 