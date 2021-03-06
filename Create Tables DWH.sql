--<ScriptOptions statementTerminator="GO"/>

CREATE SCHEMA "dwh"
GO

CREATE TABLE "dwh"."CM_DIM_BARRIO" (
		"SK_BARRIO" NUMERIC(18 , 0) NOT NULL,
		"CD_BARRIO" VARCHAR(20) NOT NULL,
		"NM_BARRIO" VARCHAR(150) NOT NULL,
		"SK_SECTOR_GEOGRAFICO" NUMERIC(18 , 0) NOT NULL,
		"CD_SECTOR_GEOGRAFICO" VARCHAR(20) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_DIA_FERIADO" (
		"SK_DIA_FERIADO" NUMERIC(18 , 0) NOT NULL,
		"CD_DIA_FERIADO" VARCHAR(20) NOT NULL,
		"NM_DIA_FERIADO" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_FECHA" (
		"SK_FC" NUMERIC(18 , 0) NULL,
		"NM_FC" VARCHAR(100) NULL,
		"A�O" DATETIME NULL,
		"NM_A�O" VARCHAR(100) NULL,
		"SEMESTRE" DATETIME NULL,
		"NM_SEMESTRE" VARCHAR(100) NULL,
		"TRIMESTRE" DATETIME NULL,
		"NM_TRIMESTRE" VARCHAR(100) NULL,
		"MES" DATETIME NULL,
		"NM_MES" VARCHAR(100) NULL,
		"SEMANA" INT NULL,
		"NM_SEMANA" VARCHAR(100) NULL,
		"DIA_A�O" INT NULL,
		"NM_DIA_A�O" VARCHAR(100) NULL,
		"DIA_SEMESTRE_A�O" INT NULL,
		"NM_DIA_SEMESTRE_A�O" VARCHAR(100) NULL,
		"DIA_TRIMESTRE" INT NULL,
		"NM_DIA_TRIMESTRE" VARCHAR(100) NULL,
		"DIA_MES" INT NULL,
		"NM_DIA_MES" VARCHAR(100) NULL,
		"DIA_SEMANA" INT NULL,
		"NM_DIA_SEMANA" VARCHAR(100) NULL,
		"SEMANA_A�O" INT NULL,
		"NM_SEMANA_A�O" VARCHAR(100) NULL,
		"MES_A�O" INT NULL,
		"NM_MES_A�O" VARCHAR(100) NULL,
		"MES_SEMESTRE_A�O" INT NULL,
		"NM_MES_SEMESTRE_A�O" VARCHAR(100) NULL,
		"MES_TRIMESTRE" INT NULL,
		"NM_MES_TRIMESTRE" VARCHAR(100) NULL,
		"TRIMESTRE_A�O" INT NULL,
		"NM_DEL_TRIMESTRE_A�O" VARCHAR(100) NULL,
		"TRIMESTRE_SEMESTRE_A�O" INT NULL,
		"NM_TRIMESTRE_SEMESTRE_A�O" VARCHAR(100) NULL,
		"SEMESTRE_A�O" INT NULL,
		"NM_SEMESTRE_A�O" VARCHAR(100) NULL,
		"A�O_FISCAL" DATETIME NULL,
		"NM_A�O_FISCAL" VARCHAR(100) NULL,
		"SEMESTRE_FISCAL" DATETIME NULL,
		"NM_SEMESTRE_FISCAL" VARCHAR(100) NULL,
		"TRIMESTRE_FISCAL" DATETIME NULL,
		"NM_TRIMESTRE_FISCAL" VARCHAR(100) NULL,
		"MES_FISCAL" DATETIME NULL,
		"NM_MES_FISCAL" VARCHAR(100) NULL,
		"SEMANA_FISCAL" DATETIME NULL,
		"NM_SEMANA_FISCAL" VARCHAR(100) NULL,
		"DIA_FISCAL" DATETIME NULL,
		"NM_DIA_FISCAL" VARCHAR(100) NULL,
		"DIA_A�O_FISCAL" INT NULL,
		"NM_DIA_A�O_FISCAL" VARCHAR(100) NULL,
		"DIA_SEMESTRE_A�O_FISCAL" INT NULL,
		"NM_DIA_SEMESTRE_A�O_FISCAL" VARCHAR(100) NULL,
		"DIA_TRIMESTRE_FISCAL" INT NULL,
		"NM_DIA_TRIMESTRE_FISCAL" VARCHAR(100) NULL,
		"DIA_MES_FISCAL" INT NULL,
		"NM_DIA_MES_FISCAL" VARCHAR(100) NULL,
		"DIA_SEMANA_FISCAL" INT NULL,
		"NM_DIA_SEMANA_FISCAL" VARCHAR(100) NULL,
		"SEMANA_A�O_FISCAL" INT NULL,
		"NM_SEMANA_A�O_FISCAL" VARCHAR(100) NULL,
		"MES_A�O_FISCAL" INT NULL,
		"NM_MES_A�O_FISCAL" VARCHAR(100) NULL,
		"MES_SEMESTRE_A�O_FISCAL" INT NULL,
		"NM_MES_SEMESTRE_A�O_FISCAL" VARCHAR(100) NULL,
		"MES_TRIMESTRE_FISCAL" INT NULL,
		"NM_MES_TRIMESTRE_FISCAL" VARCHAR(100) NULL,
		"TRIMESTRE_A�O_FISCAL" INT NULL,
		"NM_DEL_TRIMESTRE_A�O_FISCAL" VARCHAR(100) NULL,
		"TRIMESTRE_SEMESTRE_A�O_FISCAL" INT NULL,
		"NM_TRIMESTRE_SEMESTRE_A�O_FISCAL" VARCHAR(100) NULL,
		"SEMESTRE_A�O_FISCAL" INT NULL,
		"NM_SEMESTRE_A�O_FISCAL" VARCHAR(100) NULL,
		"SK_DIA_FERIADO" NUMERIC(18 , 0) NOT NULL,
		"CD_DIA_FERIADO" VARCHAR(20) NOT NULL,
		"INDICADOR_DIA_LABORAL" INT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_LOCALIZACION_GEOGRAFICA" (
		"SK_LOCALIZACION_GEOGRAFICA" NUMERIC(18 , 0) NOT NULL,
		"CD_LOCALIZACION_GEOGRAFICA" VARCHAR(20) NOT NULL,
		"SK_BARRIO" NUMERIC(18 , 0) NOT NULL,
		"CD_BARRIO" VARCHAR(20) NOT NULL,
		"SK_SECTOR_GEOGRAFICO" NUMERIC(18 , 0) NOT NULL,
		"CD_SECTOR_GEOGRAFICO" VARCHAR(20) NOT NULL,
		"SK_MUNICIPIO" NUMERIC(18 , 0) NOT NULL,
		"CD_MUNICIPIO" VARCHAR(20) NOT NULL,
		"SK_PROVINCIA" NUMERIC(18 , 0) NOT NULL,
		"CD_PROVINCIA" VARCHAR(20) NOT NULL,
		"SK_REGION" NUMERIC(18 , 0) NOT NULL,
		"CD_REGION" VARCHAR(20) NOT NULL,
		"SK_PAIS" NUMERIC(18 , 0) NOT NULL,
		"CD_PAIS" VARCHAR(20) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_MUNICIPIO" (
		"SK_MUNICIPIO" NUMERIC(18 , 0) NOT NULL,
		"CD_MUNICIPIO" VARCHAR(20) NOT NULL,
		"NM_MUNICIPIO" VARCHAR(150) NOT NULL,
		"INDICADOR_MUNICIPIO_CABECERA" CHAR(1) NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_PROVINCIA" NUMERIC(18 , 0) NOT NULL,
		"CD_PROVINCIA" VARCHAR(20) NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_PAIS" (
		"SK_PAIS" NUMERIC(18 , 0) NOT NULL,
		"CD_PAIS" VARCHAR(20) NOT NULL,
		"NM_PAIS" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_PERIODO" (
		"SK_PERIODO" NUMERIC(18 , 0) NULL,
		"CD_PERIODO" VARCHAR(20) NOT NULL,
		"DESC_PERIODO" VARCHAR(100) NULL,
		"SK_PERIODO_ANTERIOR" NUMERIC(18 , 0) NULL,
		"CD_PERIODO_ANTERIOR" VARCHAR(20) NULL,
		"SK_TIPO_PERIODO" NUMERIC(18 , 0) NULL,
		"CD_TIPO_PERIODO" VARCHAR(20) NOT NULL,
		"FC_INI_PERIODO" DATETIME NULL,
		"FC_FIN_PERIODO" DATETIME NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_PROVINCIA" (
		"SK_PROVINCIA" NUMERIC(18 , 0) NOT NULL,
		"CD_PROVINCIA" VARCHAR(20) NOT NULL,
		"NM_PROVINCIA" VARCHAR(150) NOT NULL,
		"SIGLA_PROVINCIA" VARCHAR(20) NULL,
		"SK_REGION" NUMERIC(18 , 0) NOT NULL,
		"CD_REGION" VARCHAR(20) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_REGION" (
		"SK_REGION" NUMERIC(18 , 0) NOT NULL,
		"CD_REGION" VARCHAR(20) NOT NULL,
		"NM_REGION" VARCHAR(150) NOT NULL,
		"CD_MACROREGION" VARCHAR(20) NOT NULL,
		"NM_MACROREGION" VARCHAR(150) NOT NULL,
		"SK_PAIS" NUMERIC(18 , 0) NOT NULL,
		"CD_PAIS" VARCHAR(20) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_SECTOR_GEOGRAFICO" (
		"SK_SECTOR_GEOGRAFICO" NUMERIC(18 , 0) NOT NULL,
		"CD_SECTOR_GEOGRAFICO" VARCHAR(20) NOT NULL,
		"NM_SECTOR_GEOGRAFICO" VARCHAR(150) NOT NULL,
		"SK_MUNICIPIO" NUMERIC(18 , 0) NOT NULL,
		"CD_MUNICIPIO" VARCHAR(20) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_TIPO_DIRECCION" (
		"SK_TIPO_DIRECCION" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_DIRECCION" VARCHAR(20) NOT NULL,
		"DESC_TIPO_DIRECCION" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_TIPO_PERIODO" (
		"SK_TIPO_PERIODO" NUMERIC(18 , 0) NULL,
		"CD_TIPO_PERIODO" VARCHAR(20) NULL,
		"DESC_TIPO_PERIODO" VARCHAR(100) NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."CM_DIM_VIA_CONTACTO" (
		"SK_VIA_CONTACTO" NUMERIC(18 , 0) NOT NULL,
		"CD_VIA_CONTACTO" VARCHAR(20) NOT NULL,
		"DESC_VIA_CONTACTO" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_CARGO" (
		"SK_CARGO" NUMERIC(18 , 0) NOT NULL,
		"CD_CARGO" VARCHAR(20) NOT NULL,
		"DESC_CARGO" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_CATEGORIA_PUESTO" (
		"SK_CATEGORIA_PUESTO" NUMERIC(18 , 0) NOT NULL,
		"CD_CATEGORIA_PUESTO" VARCHAR(20) NOT NULL,
		"DESC_CATEGORIA_PUESTO" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_CATEGORIA_SALARIAL" (
		"SK_CATEGORIA_SALARIAL" NUMERIC(18 , 0) NOT NULL,
		"CD_CATEGORIA_SALARIAL" VARCHAR(20) NOT NULL,
		"DESC_CATEGORIA_SALARIAL" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_CENTRO_COSTO" (
		"SK_CENTRO_COSTO" NUMERIC(18 , 0) NOT NULL,
		"CD_CENTRO_COSTO" VARCHAR(20) NOT NULL,
		"DESC_CENTRO_COSTO" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_DEPARTAMENTO" (
		"SK_DEPARTAMENTO" NUMERIC(18 , 0) NOT NULL,
		"CD_DEPARTAMENTO" VARCHAR(20) NOT NULL,
		"DESC_DEPARTAMENTO" VARCHAR(100) NOT NULL,
		"SK_DEPARTAMENTO_PADRE" NUMERIC(18 , 0) NOT NULL,
		"CD_DEPARTAMENTO_PADRE" VARCHAR(20) NOT NULL,
		"SK_CENTRO_COSTO" NUMERIC(18 , 0) NOT NULL,
		"CD_CENTRO_COSTO" VARCHAR(20) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_EMPLEADO" (
		"SK_EMPLEADO" NUMERIC(18 , 0) NOT NULL,
		"CD_EMPLEADO" VARCHAR(20) NOT NULL,
		"SK_PERSONA" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_INDENTIFICACION" VARCHAR(20) NOT NULL,
		"DOC_IDENTIFICACION" VARCHAR(20) NOT NULL,
		"NM_PERSONA" VARCHAR(150) NOT NULL,
		"FC_INGRESO" DATETIME NOT NULL,
		"SK_CARGO" NUMERIC(18 , 0) NOT NULL,
		"CD_CARGO" VARCHAR(20) NOT NULL,
		"SK_ESTATUS_EMPLEADO" NUMERIC(18 , 0) NOT NULL,
		"CD_ESTATUS_EMPLEADO" VARCHAR(20) NOT NULL,
		"SK_CATEGORIA_SALARIAL" NUMERIC(18 , 0) NOT NULL,
		"CD_CATEGORIA_SALARIAL" VARCHAR(20) NOT NULL,
		"SK_DEPARTAMENTO" NUMERIC(18 , 0) NOT NULL,
		"CD_DEPARTAMENTO" VARCHAR(20) NOT NULL,
		"SK_EMPRESA" NUMERIC(18 , 0) NOT NULL,
		"CD_EMPRESA" VARCHAR(20) NOT NULL,
		"SK_PUESTO" NUMERIC(18 , 0) NOT NULL,
		"CD_PUESTO" VARCHAR(20) NOT NULL,
		"SK_TIPO_CONTRATO_TRABAJO" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_CONTRATO_TRABAJO" VARCHAR(20) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL,
		"SALARIO_BASE" NUMERIC(20 , 2) NULL,
		"MONTO_BENEFICIOS" NUMERIC(20 , 2) NULL,
		"MONTO_NETO_EMPLEADO_NOM_BASE" NUMERIC(20 , 2) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_EMPRESA" (
		"SK_EMPRESA" NUMERIC(18 , 0) NOT NULL,
		"CD_EMPRESA" VARCHAR(20) NOT NULL,
		"DESC_EMPRESA" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_ESTADO_CIVIL" (
		"SK_ESTADO_CIVIL" NUMERIC(18 , 0) NOT NULL,
		"CD_ESTADO_CIVIL" VARCHAR(20) NOT NULL,
		"DESC_ESTADO_CIVIL" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_ESTATUS_EMPLEADO" (
		"SK_ESTATUS_EMPLEADO" NUMERIC(18 , 0) NOT NULL,
		"CD_ESTATUS_EMPLEADO" VARCHAR(20) NOT NULL,
		"DESC_ESTATUS_EMPLEADO" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_FAMILIA_PUESTO" (
		"SK_FAMILIA_PUESTO" NUMERIC(18 , 0) NOT NULL,
		"CD_FAMILIA_PUESTO" VARCHAR(20) NOT NULL,
		"DESC_FAMILIA_PUESTO" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_GENERO" (
		"SK_GENERO" NUMERIC(18 , 0) NOT NULL,
		"CD_GENERO" VARCHAR(20) NOT NULL,
		"DESC_GENERO" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_NIVEL_EDUCATIVO" (
		"SK_NIVEL_EDUCATIVO" NUMERIC(18 , 0) NOT NULL,
		"CD_NIVEL_EDUCATIVO" VARCHAR(20) NOT NULL,
		"DESC_NIVEL_EDUCATIVO" VARCHAR(150) NOT NULL,
		"ORDEN_NIVEL_EDUCATIVO" VARCHAR(150) NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_OCUPACION" (
		"SK_OCUPACION" NUMERIC(18 , 0) NOT NULL,
		"CD_OCUPACION" VARCHAR(20) NOT NULL,
		"DESC_OCUPACION" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_OFICINA" (
		"SK_OFICINA" NUMERIC(18 , 0) NOT NULL,
		"CD_OFICINA" VARCHAR(20) NOT NULL,
		"DESC_OFICINA" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_PERSONA" (
		"SK_PERSONA" NUMERIC(18 , 0) NOT NULL,
		"SK_TIPO_IDENTIFICACION" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_INDENTIFICACION" VARCHAR(20) NOT NULL,
		"DOC_IDENTIFICACION" VARCHAR(20) NOT NULL,
		"NM_PERSONA" VARCHAR(150) NOT NULL,
		"FC_NACIMIENTO" DATETIME NOT NULL,
		"SK_RANGO_EDAD" NUMERIC(18 , 0) NOT NULL,
		"CD_RANGO_EDAD" VARCHAR(20) NOT NULL,
		"FC_INGRESO" DATETIME NOT NULL,
		"SK_PROFESION" NUMERIC(18 , 0) NOT NULL,
		"CD_PROFESION" VARCHAR(20) NOT NULL,
		"SK_OCUPACION" NUMERIC(18 , 0) NOT NULL,
		"CD_OCUPACION" VARCHAR(20) NOT NULL,
		"SK_NIVEL_EDUCATIVO" NUMERIC(18 , 0) NOT NULL,
		"CD_NIVEL_EDUCATIVO" VARCHAR(20) NOT NULL,
		"SK_TIPO_RELIGION" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_RELIGION" VARCHAR(20) NOT NULL,
		"SK_TIPO_RESIDENCIA" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_RESIDENCIA" VARCHAR(20) NOT NULL,
		"SK_ESTADO_CIVIL" NUMERIC(18 , 0) NOT NULL,
		"CD_ESTADO_CIVIL" VARCHAR(20) NOT NULL,
		"SK_GENERO" NUMERIC(18 , 0) NOT NULL,
		"CD_GENERO" VARCHAR(20) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_PROFESION" (
		"SK_PROFESION" NUMERIC(18 , 0) NOT NULL,
		"CD_PROFESION" VARCHAR(20) NOT NULL,
		"DESC_PROFESION" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_PUESTO" (
		"SK_PUESTO" NUMERIC(18 , 0) NOT NULL,
		"CD_PUESTO" VARCHAR(20) NOT NULL,
		"DESC_PUESTO" VARCHAR(100) NOT NULL,
		"SK_CATEGORIA_PUESTO" NUMERIC(18 , 0) NOT NULL,
		"CD_CATEGORIA_PUESTO" VARCHAR(20) NOT NULL,
		"SK_FAMILIA_PUESTO" NUMERIC(18 , 0) NOT NULL,
		"CD_FAMILIA_PUESTO" VARCHAR(20) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_RANGO_EDAD" (
		"SK_RANGO_EDAD" NUMERIC(18 , 0) NOT NULL,
		"CD_RANGO_EDAD" VARCHAR(20) NOT NULL,
		"DESC_RANGO_EDAD" VARCHAR(100) NOT NULL,
		"VALOR_INI_RANGO" NUMERIC(10 , 2) NOT NULL,
		"VALOR_FIN_RANGO" NUMERIC(10 , 2) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_SECTOR_ECONOMICO" (
		"SK_SECTOR_ECONOMICO" NUMERIC(18 , 0) NOT NULL,
		"CD_SECTOR_ECONOMICO" VARCHAR(20) NOT NULL,
		"DESC_SECTOR_ECONOMICO" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_TIPO_CONTRATO_TRABAJO" (
		"SK_TIPO_CONTRATO_TRABAJO" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_CONTRATO_TRABAJO" VARCHAR(20) NOT NULL,
		"DESC_TIPO_CONTRATO_TRABAJO" VARCHAR(100) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NOT NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_TIPO_IDENTIFICACION" (
		"SK_TIPO_IDENTIFICACION" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_INDENTIFICACION" VARCHAR(20) NOT NULL,
		"DESC_TIPO_IDENTIFICACION" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_TIPO_RELIGION" (
		"SK_TIPO_RELIGION" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_RELIGION" VARCHAR(20) NOT NULL,
		"DESC_TIPO_RELIGION" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NOT NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_DIM_TIPO_RESIDENCIA" (
		"SK_TIPO_RESIDENCIA" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_RESIDENCIA" VARCHAR(20) NOT NULL,
		"DESC_TIPO_RESIDENCIA" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_FACT_PERFIL_EMPLEADO" (
		"SK_PERFIL_EMPLEADO" NUMERIC(18 , 0) NOT NULL,
		"FC_REFERENCIA" DATETIME NOT NULL,
		"SK_EMPLEADO" NUMERIC(18 , 0) NOT NULL,
		"CD_EMPLEADO" VARCHAR(20) NOT NULL,
		"FC_INGRESO" DATETIME NOT NULL,
		"SK_CARGO" NUMERIC(18 , 0) NOT NULL,
		"CD_CARGO" VARCHAR(20) NOT NULL,
		"SK_ESTATUS_EMPLEADO" NUMERIC(18 , 0) NOT NULL,
		"CD_ESTATUS_EMPLEADO" VARCHAR(20) NOT NULL,
		"SK_CATEGORIA_SALARIAL" NUMERIC(18 , 0) NOT NULL,
		"CD_CATEGORIA_SALARIAL" VARCHAR(20) NOT NULL,
		"SK_DEPARTAMENTO" NUMERIC(18 , 0) NOT NULL,
		"CD_DEPARTAMENTO" VARCHAR(20) NOT NULL,
		"SK_EMPRESA" NUMERIC(18 , 0) NOT NULL,
		"CD_EMPRESA" VARCHAR(20) NOT NULL,
		"SK_PUESTO" NUMERIC(18 , 0) NOT NULL,
		"CD_PUESTO" VARCHAR(20) NOT NULL,
		"SK_TIPO_CONTRATO_TRABAJO" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_CONTRATO_TRABAJO" VARCHAR(20) NOT NULL,
		"SK_PERSONA" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_INDENTIFICACION" VARCHAR(20) NOT NULL,
		"DOC_IDENTIFICACION" VARCHAR(20) NOT NULL,
		"NM_PERSONA" VARCHAR(150) NOT NULL,
		"FC_NACIMIENTO" DATETIME NOT NULL,
		"SK_RANGO_EDAD" NUMERIC(18 , 0) NOT NULL,
		"CD_RANGO_EDAD" VARCHAR(20) NOT NULL,
		"SK_ESTADO_CIVIL" NUMERIC(18 , 0) NOT NULL,
		"CD_ESTADO_CIVIL" VARCHAR(20) NOT NULL,
		"SK_GENERO" NUMERIC(18 , 0) NOT NULL,
		"CD_GENERO" VARCHAR(20) NOT NULL,
		"SK_LOCALIZACION_GEOGRAFICA_RESIDENCIA" NUMERIC(18 , 0) NOT NULL,
		"CD_LOCALIZACION_GEOGRAFICA_RESIDENCIA" VARCHAR(20) NOT NULL,
		"SK_CENTRO_COSTO" NUMERIC(18 , 0) NOT NULL,
		"CD_CENTRO_COSTO" VARCHAR(20) NOT NULL,
		"CANTIDAD_EMPLEADO" NUMERIC(10 , 2) NULL,
		"SALARIO_BASE" NUMERIC(20 , 2) NULL,
		"MONTO_BENEFICIOS" NUMERIC(20 , 2) NULL,
		"MONTO_NETO_EMPLEADO_NOM_BASE" NUMERIC(20 , 2) NULL,
		"TIEMPO_EMPLEADO" NUMERIC(10 , 2) NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_REL_DIRECCION_PERSONA" (
		"SK_DIRECCION_PERSONA" NUMERIC(18 , 0) NOT NULL,
		"SK_PERSONA" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_INDENTIFICACION" VARCHAR(20) NOT NULL,
		"DOC_IDENTIFICACION" VARCHAR(20) NOT NULL,
		"SK_TIPO_DIRECCION" NUMERIC(18 , 0) NOT NULL,
		"SK_LOCALIZACION_GEOGRAFICA" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_DIRECCION" VARCHAR(20) NOT NULL,
		"CD_LOCALIZACION_GEOGRAFICA" VARCHAR(20) NOT NULL,
		"SK_BARRIO" NUMERIC(18 , 0) NOT NULL,
		"CD_BARRIO" VARCHAR(20) NOT NULL,
		"SK_SECTOR_GEOGRAFICO" NUMERIC(18 , 0) NOT NULL,
		"CD_SECTOR_GEOGRAFICO" VARCHAR(20) NOT NULL,
		"SK_MUNICIPIO" NUMERIC(18 , 0) NOT NULL,
		"CD_MUNICIPIO" VARCHAR(20) NOT NULL,
		"SK_PROVINCIA" NUMERIC(18 , 0) NOT NULL,
		"CD_PROVINCIA" VARCHAR(20) NOT NULL,
		"SK_REGION" NUMERIC(18 , 0) NOT NULL,
		"CD_REGION" VARCHAR(20) NOT NULL,
		"SK_PAIS" NUMERIC(18 , 0) NOT NULL,
		"CD_PAIS" VARCHAR(20) NOT NULL,
		"DIRECCION_PERSONA" VARCHAR(150) NOT NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE TABLE "dwh"."PE_REL_VIA_CONTACTO_PERSONA" (
		"SK_REL_VIA_CONTACTO_PERSONA" NUMERIC(18 , 0) NOT NULL,
		"SK_PERSONA" NUMERIC(18 , 0) NOT NULL,
		"CD_TIPO_INDENTIFICACION" VARCHAR(20) NOT NULL,
		"DOC_IDENTIFICACION" VARCHAR(20) NOT NULL,
		"SK_VIA_CONTACTO" NUMERIC(18 , 0) NOT NULL,
		"CD_VIA_CONTACTO" VARCHAR(20) NOT NULL,
		"DESC_CONTACTO_PERSONA" VARCHAR(150) NULL,
		"ORDEN_PRIORIDAD_CONTACTO" NUMERIC(10 , 2) NULL,
		"FC_INI_VAL" DATETIME NULL,
		"FC_FIN_VAL" DATETIME NULL,
		"SK_EJECUCION_CREACION" NUMERIC(18 , 0) NOT NULL,
		"SK_EJECUCION_MODIFICACION" NUMERIC(18 , 0) NULL
	)
GO

CREATE UNIQUE INDEX "DIM BARRIO_LK"
	ON "dwh"."CM_DIM_BARRIO"
	("CD_BARRIO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM CARGO_LK"
	ON "dwh"."PE_DIM_CARGO"
	("CD_CARGO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM CATEGORIA PUESTO_LK"
	ON "dwh"."PE_DIM_CATEGORIA_PUESTO"
	("CD_CATEGORIA_PUESTO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM CATEGORIA SALARIAL_LK"
	ON "dwh"."PE_DIM_CATEGORIA_SALARIAL"
	("CD_CATEGORIA_SALARIAL"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM CENTRO COSTO_LK"
	ON "dwh"."PE_DIM_CENTRO_COSTO"
	("CD_CENTRO_COSTO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM DEPARTAMENTO_LK"
	ON "dwh"."PE_DIM_DEPARTAMENTO"
	("CD_DEPARTAMENTO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM DIA FERIADO_LK"
	ON "dwh"."CM_DIM_DIA_FERIADO"
	("CD_DIA_FERIADO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM EMPLEADO_LK"
	ON "dwh"."PE_DIM_EMPLEADO"
	("CD_EMPLEADO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM EMPRESA_LK"
	ON "dwh"."PE_DIM_EMPRESA"
	("CD_EMPRESA"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM ESTADO CIVIL_LK"
	ON "dwh"."PE_DIM_ESTADO_CIVIL"
	("CD_ESTADO_CIVIL"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM ESTATUS EMPLEADO_LK"
	ON "dwh"."PE_DIM_ESTATUS_EMPLEADO"
	("CD_ESTATUS_EMPLEADO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM FAMILIA PUESTO_LK"
	ON "dwh"."PE_DIM_FAMILIA_PUESTO"
	("CD_FAMILIA_PUESTO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM GENERO_LK"
	ON "dwh"."PE_DIM_GENERO"
	("CD_GENERO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM LOCALIZACION GEOGRAFICA_LK"
	ON "dwh"."CM_DIM_LOCALIZACION_GEOGRAFICA"
	("CD_LOCALIZACION_GEOGRAFICA"		ASC,
	  "CD_BARRIO"		ASC,
	  "CD_SECTOR_GEOGRAFICO"		ASC,
	  "CD_MUNICIPIO"		ASC,
	  "CD_PROVINCIA"		ASC,
	  "CD_REGION"		ASC,
	  "CD_PAIS"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM MUNICIPIO_LK"
	ON "dwh"."CM_DIM_MUNICIPIO"
	("CD_MUNICIPIO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM NIVEL EDUCATIVO_LK"
	ON "dwh"."PE_DIM_NIVEL_EDUCATIVO"
	("CD_NIVEL_EDUCATIVO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM OCUPACION_LK"
	ON "dwh"."PE_DIM_OCUPACION"
	("CD_OCUPACION"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM OFICINA_LK"
	ON "dwh"."PE_DIM_OFICINA"
	("CD_OFICINA"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM PAIS_LK"
	ON "dwh"."CM_DIM_PAIS"
	("CD_PAIS"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM PERSONA_LK"
	ON "dwh"."PE_DIM_PERSONA"
	("FC_INI_VAL"		ASC,
	  "CD_TIPO_INDENTIFICACION"		ASC,
	  "DOC_IDENTIFICACION"		ASC)
GO

CREATE UNIQUE INDEX "DIM PROFESION_LK"
	ON "dwh"."PE_DIM_PROFESION"
	("CD_PROFESION"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM PROVINCIA_LK"
	ON "dwh"."CM_DIM_PROVINCIA"
	("CD_PROVINCIA"		ASC)
GO

CREATE UNIQUE INDEX "DIM PUESTO_LK"
	ON "dwh"."PE_DIM_PUESTO"null
GO

CREATE UNIQUE INDEX "DIM REGION_LK"
	ON "dwh"."CM_DIM_REGION"
	("CD_REGION"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM SECTOR ECONOMICO_LK"
	ON "dwh"."PE_DIM_SECTOR_ECONOMICO"
	("CD_SECTOR_ECONOMICO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM SECTOR GEOGRAFICO_LK"
	ON "dwh"."CM_DIM_SECTOR_GEOGRAFICO"
	("CD_SECTOR_GEOGRAFICO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM TIPO CONTRATO TRABAJO_LK"
	ON "dwh"."PE_DIM_TIPO_CONTRATO_TRABAJO"
	("CD_TIPO_CONTRATO_TRABAJO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM TIPO DIRECCION_LK"
	ON "dwh"."CM_DIM_TIPO_DIRECCION"
	("CD_TIPO_DIRECCION"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM TIPO IDENTIFICACION_LK"
	ON "dwh"."PE_DIM_TIPO_IDENTIFICACION"
	("CD_TIPO_INDENTIFICACION"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM TIPO PERIODO_LK"
	ON "dwh"."CM_DIM_TIPO_PERIODO"
	("CD_TIPO_PERIODO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM TIPO RELIGION_LK"
	ON "dwh"."PE_DIM_TIPO_RELIGION"
	("CD_TIPO_RELIGION"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM TIPO RESIDENCIA_LK"
	ON "dwh"."PE_DIM_TIPO_RESIDENCIA"
	("CD_TIPO_RESIDENCIA"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "DIM VIA CONTACTO_LK"
	ON "dwh"."CM_DIM_VIA_CONTACTO"
	("CD_VIA_CONTACTO"		ASC,
	  "FC_INI_VAL"		ASC)
GO

CREATE UNIQUE INDEX "FACT PERFIL EMPLEADO_LK"
	ON "dwh"."PE_FACT_PERFIL_EMPLEADO"
	("FC_REFERENCIA"		ASC)
GO

ALTER TABLE "dwh"."CM_DIM_BARRIO" ADD CONSTRAINT "DIM BARRIO_AK" UNIQUE
	("SK_BARRIO",
	 "CD_BARRIO")
GO

ALTER TABLE "dwh"."CM_DIM_BARRIO" ADD CONSTRAINT "DIM BARRIO_PK" PRIMARY KEY CLUSTERED
	("SK_BARRIO")
GO

ALTER TABLE "dwh"."CM_DIM_DIA_FERIADO" ADD CONSTRAINT "DIM DIA FERIADO_AK" UNIQUE
	("SK_DIA_FERIADO",
	 "CD_DIA_FERIADO")
GO

ALTER TABLE "dwh"."CM_DIM_DIA_FERIADO" ADD CONSTRAINT "DIM DIA FERIADO_PK" PRIMARY KEY CLUSTERED
	("SK_DIA_FERIADO")
GO

ALTER TABLE "dwh"."CM_DIM_FECHA" ADD CONSTRAINT "DIM FECHA_PK" PRIMARY KEY CLUSTERED
	("SK_FC")
GO

ALTER TABLE "dwh"."CM_DIM_LOCALIZACION_GEOGRAFICA" ADD CONSTRAINT "DIM LOCALIZACION GEOGRAFICA_AK" UNIQUE
	("SK_LOCALIZACION_GEOGRAFICA",
	 "CD_LOCALIZACION_GEOGRAFICA")
GO

ALTER TABLE "dwh"."CM_DIM_LOCALIZACION_GEOGRAFICA" ADD CONSTRAINT "DIM LOCALIZACION GEOGRAFICA_AK2" UNIQUE
	("SK_LOCALIZACION_GEOGRAFICA",
	 "CD_LOCALIZACION_GEOGRAFICA",
	 "SK_BARRIO",
	 "CD_BARRIO",
	 "SK_SECTOR_GEOGRAFICO",
	 "CD_SECTOR_GEOGRAFICO",
	 "SK_MUNICIPIO",
	 "CD_MUNICIPIO",
	 "SK_PROVINCIA",
	 "CD_PROVINCIA",
	 "SK_REGION",
	 "CD_REGION",
	 "SK_PAIS",
	 "CD_PAIS")
GO

ALTER TABLE "dwh"."CM_DIM_LOCALIZACION_GEOGRAFICA" ADD CONSTRAINT "DIM LOCALIZACION GEOGRAFICA_PK" PRIMARY KEY CLUSTERED
	("SK_LOCALIZACION_GEOGRAFICA")
GO

ALTER TABLE "dwh"."CM_DIM_MUNICIPIO" ADD CONSTRAINT "DIM MUNICIPIO_AK" UNIQUE
	("SK_MUNICIPIO",
	 "CD_MUNICIPIO")
GO

ALTER TABLE "dwh"."CM_DIM_MUNICIPIO" ADD CONSTRAINT "DIM MUNICIPIO_PK" PRIMARY KEY CLUSTERED
	("SK_MUNICIPIO")
GO

ALTER TABLE "dwh"."CM_DIM_PAIS" ADD CONSTRAINT "DIM PAIS_AK" UNIQUE
	("SK_PAIS",
	 "CD_PAIS")
GO

ALTER TABLE "dwh"."CM_DIM_PAIS" ADD CONSTRAINT "DIM PAIS_PK" PRIMARY KEY CLUSTERED
	("SK_PAIS")
GO

ALTER TABLE "dwh"."CM_DIM_PERIODO" ADD CONSTRAINT "DIM PERIODO_AK" UNIQUE
	("SK_PERIODO",
	 "CD_PERIODO")
GO

ALTER TABLE "dwh"."CM_DIM_PERIODO" ADD CONSTRAINT "DIM PERIODO_LK" UNIQUE
	("CD_PERIODO",
	 "CD_TIPO_PERIODO",
	 "FC_INI_VAL")
GO

ALTER TABLE "dwh"."CM_DIM_PERIODO" ADD CONSTRAINT "DIM PERIODO_PK" PRIMARY KEY CLUSTERED
	("SK_PERIODO")
GO

ALTER TABLE "dwh"."CM_DIM_PROVINCIA" ADD CONSTRAINT "DIM PROVINCIA_AK" UNIQUE
	("SK_PROVINCIA",
	 "CD_PROVINCIA")
GO

ALTER TABLE "dwh"."CM_DIM_PROVINCIA" ADD CONSTRAINT "DIM PROVINCIA_PK" PRIMARY KEY CLUSTERED
	("SK_PROVINCIA")
GO

ALTER TABLE "dwh"."CM_DIM_REGION" ADD CONSTRAINT "DIM REGION_AK" UNIQUE
	("CD_REGION",
	 "SK_REGION")
GO

ALTER TABLE "dwh"."CM_DIM_REGION" ADD CONSTRAINT "DIM REGION_PK" PRIMARY KEY CLUSTERED
	("SK_REGION")
GO

ALTER TABLE "dwh"."CM_DIM_SECTOR_GEOGRAFICO" ADD CONSTRAINT "DIM SECTOR GEOGRAFICO_AK" UNIQUE
	("SK_SECTOR_GEOGRAFICO",
	 "CD_SECTOR_GEOGRAFICO")
GO

ALTER TABLE "dwh"."CM_DIM_SECTOR_GEOGRAFICO" ADD CONSTRAINT "DIM SECTOR GEOGRAFICO_PK" PRIMARY KEY CLUSTERED
	("SK_SECTOR_GEOGRAFICO")
GO

ALTER TABLE "dwh"."CM_DIM_TIPO_DIRECCION" ADD CONSTRAINT "DIM TIPO DIRECCION_AK" UNIQUE
	("SK_TIPO_DIRECCION",
	 "CD_TIPO_DIRECCION")
GO

ALTER TABLE "dwh"."CM_DIM_TIPO_DIRECCION" ADD CONSTRAINT "DIM TIPO DIRECCION_PK" PRIMARY KEY CLUSTERED
	("SK_TIPO_DIRECCION")
GO

ALTER TABLE "dwh"."CM_DIM_TIPO_PERIODO" ADD CONSTRAINT "DIM TIPO PERIODO_AK" UNIQUE
	("SK_TIPO_PERIODO",
	 "CD_TIPO_PERIODO")
GO

ALTER TABLE "dwh"."CM_DIM_TIPO_PERIODO" ADD CONSTRAINT "DIM TIPO PERIODO_PK" PRIMARY KEY CLUSTERED
	("SK_TIPO_PERIODO")
GO

ALTER TABLE "dwh"."CM_DIM_VIA_CONTACTO" ADD CONSTRAINT "DIM VIA CONTACTO_AK" UNIQUE
	("SK_VIA_CONTACTO",
	 "CD_VIA_CONTACTO")
GO

ALTER TABLE "dwh"."CM_DIM_VIA_CONTACTO" ADD CONSTRAINT "DIM VIA CONTACTO_PK" PRIMARY KEY CLUSTERED
	("SK_VIA_CONTACTO")
GO

ALTER TABLE "dwh"."PE_DIM_CARGO" ADD CONSTRAINT "DIM CARGO_AK" UNIQUE
	("SK_CARGO",
	 "CD_CARGO")
GO

ALTER TABLE "dwh"."PE_DIM_CARGO" ADD CONSTRAINT "DIM CARGO_PK" PRIMARY KEY CLUSTERED
	("SK_CARGO")
GO

ALTER TABLE "dwh"."PE_DIM_CATEGORIA_PUESTO" ADD CONSTRAINT "DIM CATEGORIA PUESTO_AK" UNIQUE
	("SK_CATEGORIA_PUESTO",
	 "CD_CATEGORIA_PUESTO")
GO

ALTER TABLE "dwh"."PE_DIM_CATEGORIA_PUESTO" ADD CONSTRAINT "DIM CATEGORIA PUESTO_PK" PRIMARY KEY CLUSTERED
	("SK_CATEGORIA_PUESTO")
GO

ALTER TABLE "dwh"."PE_DIM_CATEGORIA_SALARIAL" ADD CONSTRAINT "DIM CATEGORIA SALARIAL_AK" UNIQUE
	("SK_CATEGORIA_SALARIAL",
	 "CD_CATEGORIA_SALARIAL")
GO

ALTER TABLE "dwh"."PE_DIM_CATEGORIA_SALARIAL" ADD CONSTRAINT "DIM CATEGORIA SALARIAL_PK" PRIMARY KEY CLUSTERED
	("SK_CATEGORIA_SALARIAL")
GO

ALTER TABLE "dwh"."PE_DIM_CENTRO_COSTO" ADD CONSTRAINT "DIM CENTRO COSTO_AK" UNIQUE
	("SK_CENTRO_COSTO",
	 "CD_CENTRO_COSTO")
GO

ALTER TABLE "dwh"."PE_DIM_CENTRO_COSTO" ADD CONSTRAINT "DIM CENTRO COSTO_PK" PRIMARY KEY CLUSTERED
	("SK_CENTRO_COSTO")
GO

ALTER TABLE "dwh"."PE_DIM_DEPARTAMENTO" ADD CONSTRAINT "DIM DEPARTAMENTO_AK" UNIQUE
	("SK_DEPARTAMENTO",
	 "CD_DEPARTAMENTO")
GO

ALTER TABLE "dwh"."PE_DIM_DEPARTAMENTO" ADD CONSTRAINT "DIM DEPARTAMENTO_PK" PRIMARY KEY CLUSTERED
	("SK_DEPARTAMENTO")
GO

ALTER TABLE "dwh"."PE_DIM_EMPLEADO" ADD CONSTRAINT "DIM EMPLEADO_AK" UNIQUE
	("SK_EMPLEADO",
	 "CD_EMPLEADO")
GO

ALTER TABLE "dwh"."PE_DIM_EMPLEADO" ADD CONSTRAINT "DIM EMPLEADO_AK2" UNIQUE
	("SK_EMPLEADO",
	 "CD_EMPLEADO",
	 "FC_INGRESO",
	 "SK_CARGO",
	 "CD_CARGO",
	 "SK_ESTATUS_EMPLEADO",
	 "CD_ESTATUS_EMPLEADO",
	 "SK_CATEGORIA_SALARIAL",
	 "CD_CATEGORIA_SALARIAL",
	 "SK_DEPARTAMENTO",
	 "CD_DEPARTAMENTO",
	 "SK_EMPRESA",
	 "CD_EMPRESA",
	 "SK_PUESTO",
	 "CD_PUESTO",
	 "SK_TIPO_CONTRATO_TRABAJO",
	 "CD_TIPO_CONTRATO_TRABAJO")
GO

ALTER TABLE "dwh"."PE_DIM_EMPLEADO" ADD CONSTRAINT "DIM EMPLEADO_PK" PRIMARY KEY CLUSTERED
	("SK_EMPLEADO")
GO

ALTER TABLE "dwh"."PE_DIM_EMPRESA" ADD CONSTRAINT "DIM EMPRESA_AK" UNIQUE
	("SK_EMPRESA",
	 "CD_EMPRESA")
GO

ALTER TABLE "dwh"."PE_DIM_EMPRESA" ADD CONSTRAINT "DIM EMPRESA_PK" PRIMARY KEY CLUSTERED
	("SK_EMPRESA")
GO

ALTER TABLE "dwh"."PE_DIM_ESTADO_CIVIL" ADD CONSTRAINT "DIM ESTADO CIVIL_AK" UNIQUE
	("SK_ESTADO_CIVIL",
	 "CD_ESTADO_CIVIL")
GO

ALTER TABLE "dwh"."PE_DIM_ESTADO_CIVIL" ADD CONSTRAINT "DIM ESTADO CIVIL_PK" PRIMARY KEY CLUSTERED
	("SK_ESTADO_CIVIL")
GO

ALTER TABLE "dwh"."PE_DIM_ESTATUS_EMPLEADO" ADD CONSTRAINT "DIM ESTATUS EMPLEADO_AK" UNIQUE
	("SK_ESTATUS_EMPLEADO",
	 "CD_ESTATUS_EMPLEADO")
GO

ALTER TABLE "dwh"."PE_DIM_ESTATUS_EMPLEADO" ADD CONSTRAINT "DIM ESTATUS EMPLEADO_PK" PRIMARY KEY CLUSTERED
	("SK_ESTATUS_EMPLEADO")
GO

ALTER TABLE "dwh"."PE_DIM_FAMILIA_PUESTO" ADD CONSTRAINT "DIM FAMILIA PUESTO_AK" UNIQUE
	("SK_FAMILIA_PUESTO",
	 "CD_FAMILIA_PUESTO")
GO

ALTER TABLE "dwh"."PE_DIM_FAMILIA_PUESTO" ADD CONSTRAINT "DIM FAMILIA PUESTO_PK" PRIMARY KEY CLUSTERED
	("SK_FAMILIA_PUESTO")
GO

ALTER TABLE "dwh"."PE_DIM_GENERO" ADD CONSTRAINT "DIM GENERO_AK" UNIQUE
	("SK_GENERO",
	 "CD_GENERO")
GO

ALTER TABLE "dwh"."PE_DIM_GENERO" ADD CONSTRAINT "DIM GENERO_PK" PRIMARY KEY CLUSTERED
	("SK_GENERO")
GO

ALTER TABLE "dwh"."PE_DIM_NIVEL_EDUCATIVO" ADD CONSTRAINT "DIM NIVEL EDUCATIVO_AK" UNIQUE
	("SK_NIVEL_EDUCATIVO",
	 "CD_NIVEL_EDUCATIVO")
GO

ALTER TABLE "dwh"."PE_DIM_NIVEL_EDUCATIVO" ADD CONSTRAINT "DIM NIVEL EDUCATIVO_PK" PRIMARY KEY CLUSTERED
	("SK_NIVEL_EDUCATIVO")
GO

ALTER TABLE "dwh"."PE_DIM_OCUPACION" ADD CONSTRAINT "DIM OCUPACION_AK" UNIQUE
	("SK_OCUPACION",
	 "CD_OCUPACION")
GO

ALTER TABLE "dwh"."PE_DIM_OCUPACION" ADD CONSTRAINT "DIM OCUPACION_PK" PRIMARY KEY CLUSTERED
	("SK_OCUPACION")
GO

ALTER TABLE "dwh"."PE_DIM_OFICINA" ADD CONSTRAINT "DIM OFICINA_AK" UNIQUE
	("SK_OFICINA",
	 "CD_OFICINA")
GO

ALTER TABLE "dwh"."PE_DIM_OFICINA" ADD CONSTRAINT "DIM OFICINA_PK" PRIMARY KEY CLUSTERED
	("SK_OFICINA")
GO

ALTER TABLE "dwh"."PE_DIM_PERSONA" ADD CONSTRAINT "DIM PERSONA_AK" UNIQUE
	("SK_PERSONA",
	 "CD_TIPO_INDENTIFICACION",
	 "DOC_IDENTIFICACION")
GO

ALTER TABLE "dwh"."PE_DIM_PERSONA" ADD CONSTRAINT "DIM PERSONA_AK2" UNIQUE
	("SK_PERSONA",
	 "CD_TIPO_INDENTIFICACION",
	 "DOC_IDENTIFICACION",
	 "NM_PERSONA")
GO

ALTER TABLE "dwh"."PE_DIM_PERSONA" ADD CONSTRAINT "DIM PERSONA_AK3" UNIQUE
	("SK_PERSONA",
	 "CD_TIPO_INDENTIFICACION",
	 "DOC_IDENTIFICACION",
	 "NM_PERSONA",
	 "FC_NACIMIENTO",
	 "SK_RANGO_EDAD",
	 "CD_RANGO_EDAD",
	 "FC_INGRESO",
	 "SK_ESTADO_CIVIL",
	 "CD_ESTADO_CIVIL",
	 "SK_GENERO",
	 "CD_GENERO")
GO

ALTER TABLE "dwh"."PE_DIM_PERSONA" ADD CONSTRAINT "DIM PERSONA_PK" PRIMARY KEY CLUSTERED
	("SK_PERSONA")
GO

ALTER TABLE "dwh"."PE_DIM_PROFESION" ADD CONSTRAINT "DIM PROFESION_AK" UNIQUE
	("SK_PROFESION",
	 "CD_PROFESION")
GO

ALTER TABLE "dwh"."PE_DIM_PROFESION" ADD CONSTRAINT "DIM PROFESION_PK" PRIMARY KEY CLUSTERED
	("SK_PROFESION")
GO

ALTER TABLE "dwh"."PE_DIM_PUESTO" ADD CONSTRAINT "DIM PUESTO_AK" UNIQUE
	("SK_PUESTO",
	 "CD_PUESTO")
GO

ALTER TABLE "dwh"."PE_DIM_PUESTO" ADD CONSTRAINT "DIM PUESTO_PK" PRIMARY KEY CLUSTERED
	("SK_PUESTO")
GO

ALTER TABLE "dwh"."PE_DIM_RANGO_EDAD" ADD CONSTRAINT "DIM RANGO EDAD_AK" UNIQUE
	("SK_RANGO_EDAD",
	 "CD_RANGO_EDAD")
GO

ALTER TABLE "dwh"."PE_DIM_RANGO_EDAD" ADD CONSTRAINT "DIM RANGO EDAD_LK" UNIQUE
	("CD_RANGO_EDAD",
	 "VALOR_INI_RANGO",
	 "VALOR_FIN_RANGO",
	 "FC_INI_VAL")
GO

ALTER TABLE "dwh"."PE_DIM_RANGO_EDAD" ADD CONSTRAINT "DIM RANGO EDAD_PK" PRIMARY KEY CLUSTERED
	("SK_RANGO_EDAD")
GO

ALTER TABLE "dwh"."PE_DIM_SECTOR_ECONOMICO" ADD CONSTRAINT "DIM SECTOR ECONOMICO_AK" UNIQUE
	("SK_SECTOR_ECONOMICO",
	 "CD_SECTOR_ECONOMICO")
GO

ALTER TABLE "dwh"."PE_DIM_SECTOR_ECONOMICO" ADD CONSTRAINT "DIM SECTOR ECONOMICO_PK" PRIMARY KEY CLUSTERED
	("SK_SECTOR_ECONOMICO")
GO

ALTER TABLE "dwh"."PE_DIM_TIPO_CONTRATO_TRABAJO" ADD CONSTRAINT "DIM TIPO CONTRATO TRABAJO_AK" UNIQUE
	("SK_TIPO_CONTRATO_TRABAJO",
	 "CD_TIPO_CONTRATO_TRABAJO")
GO

ALTER TABLE "dwh"."PE_DIM_TIPO_CONTRATO_TRABAJO" ADD CONSTRAINT "DIM TIPO CONTRATO TRABAJO_PK" PRIMARY KEY CLUSTERED
	("SK_TIPO_CONTRATO_TRABAJO")
GO

ALTER TABLE "dwh"."PE_DIM_TIPO_IDENTIFICACION" ADD CONSTRAINT "DIM TIPO IDENTIFICACION_AK" UNIQUE
	("SK_TIPO_IDENTIFICACION",
	 "CD_TIPO_INDENTIFICACION")
GO

ALTER TABLE "dwh"."PE_DIM_TIPO_IDENTIFICACION" ADD CONSTRAINT "DIM TIPO IDENTIFICACION_PK" PRIMARY KEY CLUSTERED
	("SK_TIPO_IDENTIFICACION")
GO

ALTER TABLE "dwh"."PE_DIM_TIPO_RELIGION" ADD CONSTRAINT "DIM TIPO RELIGION_AK" UNIQUE
	("SK_TIPO_RELIGION",
	 "CD_TIPO_RELIGION")
GO

ALTER TABLE "dwh"."PE_DIM_TIPO_RELIGION" ADD CONSTRAINT "DIM TIPO RELIGION_PK" PRIMARY KEY CLUSTERED
	("SK_TIPO_RELIGION")
GO

ALTER TABLE "dwh"."PE_DIM_TIPO_RESIDENCIA" ADD CONSTRAINT "DIM TIPO RESIDENCIA_AK" UNIQUE
	("SK_TIPO_RESIDENCIA",
	 "CD_TIPO_RESIDENCIA")
GO

ALTER TABLE "dwh"."PE_DIM_TIPO_RESIDENCIA" ADD CONSTRAINT "DIM TIPO RESIDENCIA_PK" PRIMARY KEY CLUSTERED
	("SK_TIPO_RESIDENCIA")
GO

ALTER TABLE "dwh"."PE_FACT_PERFIL_EMPLEADO" ADD CONSTRAINT "FACT PERFIL EMPLEADO_AK" UNIQUE
	("SK_PERFIL_EMPLEADO")
GO

ALTER TABLE "dwh"."PE_FACT_PERFIL_EMPLEADO" ADD CONSTRAINT "FACT PERFIL EMPLEADO_PK" PRIMARY KEY CLUSTERED
	("SK_PERFIL_EMPLEADO")
GO

ALTER TABLE "dwh"."PE_REL_DIRECCION_PERSONA" ADD CONSTRAINT "REL DIRECCION PERSONA_PK" PRIMARY KEY CLUSTERED
	("SK_DIRECCION_PERSONA")
GO

ALTER TABLE "dwh"."PE_REL_VIA_CONTACTO_PERSONA" ADD CONSTRAINT "REL ESTATUS CLIENTE_PK" PRIMARY KEY CLUSTERED
	("SK_REL_VIA_CONTACTO_PERSONA")
GO

