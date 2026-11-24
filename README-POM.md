# Dependency Installation Reminder

Because several dependencies in this project are provided as local JAR files in the `lib` folder, they must be manually installed into your local Maven repository before running `mvn clean install`.

Run the following commands to install all required dependencies:

```bash
mvn install:install-file -Dfile=lib/dyn4j-4.1.4.jar -DgroupId=org.dyn4j -DartifactId=dyn4j -Dversion=4.1.4 -Dpackaging=jar
mvn install:install-file -Dfile=lib/EasyOpenCV_v1.5.0_OBJ_bundle.jar -DgroupId=org.openftc -DartifactId=easyopencv -Dversion=1.5.0_OBJ_bundle -Dpackaging=jar
mvn install:install-file -Dfile=lib/guava-20.0.jar -DgroupId=com.google.guava -DartifactId=guava -Dversion=20.0 -Dpackaging=jar
mvn install:install-file -Dfile=lib/jamepad.jar -DgroupId=com.studiohartman -DartifactId=jamepad -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=lib/javassist-3.21.0-GA.jar -DgroupId=org.javassist -DartifactId=javassist -Dversion=3.21.0-GA -Dpackaging=jar
mvn install:install-file -Dfile=lib/reflections-0.9.11.jar -DgroupId=org.reflections -DartifactId=reflections -Dversion=0.9.11 -Dpackaging=jar
mvn install:install-file -Dfile=lib/RoadRunner.jar -DgroupId=com.acmerobotics.roadrunner -DartifactId=roadrunner -Dversion=1.0 -Dpackaging=jar
```

Note: If you move the project or the `lib` folder, you may need to update the paths in these commands.
