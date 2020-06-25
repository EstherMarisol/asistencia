create database asistencia;
use asistencia;
-- -----------------------------------------------------
-- Table `Persona`
-- -----------------------------------------------------
CREATE TABLE `persona` (
  `CI` INT NOT NULL,
  `nombres` VARCHAR(45) NOT NULL,
  `ap_paterno` VARCHAR(45) NOT NULL,
  `ap_materno` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  `telefono` INT NULL,
  `celular` INT NOT NULL,
  `whatssap` INT NOT NULL,
  `codigo` INT NOT NULL,
  PRIMARY KEY (`CI`)
);
-- -----------------------------------------------------
-- Table .`asistencia`
-- -----------------------------------------------------
CREATE TABLE `asistencia` (
  `idasistencia` INT NOT NULL,
  `fecha` DATE NOT NULL,
  `docente_iddocente` INT NOT NULL,
  PRIMARY KEY (`idasistencia`),
  CONSTRAINT `fk_asistencia_docente1`
    FOREIGN KEY (`docente_iddocente`)
    REFERENCES `docente` (`iddocente`),
);

-- -----------------------------------------------------
-- Table `estudiante`
-- -----------------------------------------------------
CREATE TABLE `estudiante` (
  `idestudiante` INT NOT NULL,
  `persona_CI` INT NOT NULL,
  `asistencia_idasistencia` INT NOT NULL,
  PRIMARY KEY (`idestudiante`),
  CONSTRAINT `fk_estudiante_Persona1`
    FOREIGN KEY (`persona_CI`)
    REFERENCES `persona` (`CI`),
  CONSTRAINT `fk_empleado_asistencia1`
    FOREIGN KEY (`asistencia_idasistencia`)
    REFERENCES `asistencia` (`idasistencia`),
    );
    -- -----------------------------------------------------
-- Table`docente`
-- -----------------------------------------------------
CREATE TABLE `docente` (
  `iddocente` INT NOT NULL,
  `fecha_registro` DATE NOT NULL,
  `persona_CI` INT NOT NULL,
  PRIMARY KEY (`iddocente`),
  CONSTRAINT `fk_docente_persona1`
    FOREIGN KEY (`persona_CI`)
    REFERENCES `persona` (`CI`)
    );