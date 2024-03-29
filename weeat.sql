--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: enum_ClienteRestauranteros_tipo_de_usuario; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_ClienteRestauranteros_tipo_de_usuario" AS ENUM (
    'Director_General',
    'Gerente_Regional',
    'Gerente_Restaurant',
    'Cajero',
    'Cocinero'
);


ALTER TYPE public."enum_ClienteRestauranteros_tipo_de_usuario" OWNER TO postgres;

--
-- Name: enum_Envios_reparto; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Envios_reparto" AS ENUM (
    'Buscando Repartidor',
    'Aceptado',
    'En_Restaurante',
    'Repartiendo',
    'Llegada_Cliente',
    'Entregado'
);


ALTER TYPE public."enum_Envios_reparto" OWNER TO postgres;

--
-- Name: enum_Envios_tipo_de_Entrega; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Envios_tipo_de_Entrega" AS ENUM (
    'Entrega',
    'Recoleccion'
);


ALTER TYPE public."enum_Envios_tipo_de_Entrega" OWNER TO postgres;

--
-- Name: enum_Evaluaciones_Rating; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Evaluaciones_Rating" AS ENUM (
    '1,2,3,4,5'
);


ALTER TYPE public."enum_Evaluaciones_Rating" OWNER TO postgres;

--
-- Name: enum_Evaluaciones_Tipo; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Evaluaciones_Tipo" AS ENUM (
    'Restaurante',
    'Repartidor'
);


ALTER TYPE public."enum_Evaluaciones_Tipo" OWNER TO postgres;

--
-- Name: enum_Menus_nombre; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Menus_nombre" AS ENUM (
    'Desayuno',
    'Comida',
    'Cena',
    'Brunch',
    'Ensalada',
    'Sopa',
    'Bebidas',
    'Postres'
);


ALTER TYPE public."enum_Menus_nombre" OWNER TO postgres;

--
-- Name: enum_MetodosdePagos_metodo_pago; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_MetodosdePagos_metodo_pago" AS ENUM (
    'Efectivo',
    'Tarjeta'
);


ALTER TYPE public."enum_MetodosdePagos_metodo_pago" OWNER TO postgres;

--
-- Name: enum_Pedidos_reparto; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Pedidos_reparto" AS ENUM (
    'Repartir',
    'Aceptado',
    'Entregado'
);


ALTER TYPE public."enum_Pedidos_reparto" OWNER TO postgres;

--
-- Name: enum_Pedidos_status; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Pedidos_status" AS ENUM (
    'Colocado',
    'Recibido',
    'En_Proceso',
    'Listo',
    'En_Camino',
    'Entrega_Lista',
    'Entregado'
);


ALTER TYPE public."enum_Pedidos_status" OWNER TO postgres;

--
-- Name: enum_Pedidos_tipo_de_Entrega; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Pedidos_tipo_de_Entrega" AS ENUM (
    'Entrega',
    'Recoleccion'
);


ALTER TYPE public."enum_Pedidos_tipo_de_Entrega" OWNER TO postgres;

--
-- Name: enum_Platillos_menu; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Platillos_menu" AS ENUM (
    'Desayuno',
    'Comida',
    'Cena',
    'Brunch',
    'Ensalada',
    'Sopa',
    'Bebidas',
    'Postres'
);


ALTER TYPE public."enum_Platillos_menu" OWNER TO postgres;

--
-- Name: enum_Repartidors_estatus; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Repartidors_estatus" AS ENUM (
    'Activo',
    'Repartiendo',
    'Pausa',
    'En_Registro',
    'En_Baja',
    'Baja'
);


ALTER TYPE public."enum_Repartidors_estatus" OWNER TO postgres;

--
-- Name: enum_RestaurantClientes_tipo_de_usuario; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_RestaurantClientes_tipo_de_usuario" AS ENUM (
    'Director_General',
    'Gerente_Regional',
    'Gerente_Restaurant',
    'Cajero',
    'Cocinero'
);


ALTER TYPE public."enum_RestaurantClientes_tipo_de_usuario" OWNER TO postgres;

--
-- Name: enum_RestaurantDetails_tipoComida; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_RestaurantDetails_tipoComida" AS ENUM (
    'Desayuno',
    'Desayuno y brunch',
    'Comida',
    'Cena',
    'Ensaladas'
);


ALTER TYPE public."enum_RestaurantDetails_tipoComida" OWNER TO postgres;

--
-- Name: enum_Restaurantes_actividad; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Restaurantes_actividad" AS ENUM (
    'Abierto',
    'Cerrado',
    'Pausa'
);


ALTER TYPE public."enum_Restaurantes_actividad" OWNER TO postgres;

--
-- Name: enum_Restaurantes_estatus; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Restaurantes_estatus" AS ENUM (
    'Activo',
    'Inactivo',
    'En_Registro',
    'En_Baja'
);


ALTER TYPE public."enum_Restaurantes_estatus" OWNER TO postgres;

--
-- Name: enum_Restaurantes_tipoComida; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Restaurantes_tipoComida" AS ENUM (
    'Desayuno',
    'Desayuno y brunch',
    'Comida',
    'Cena',
    'Ensaladas'
);


ALTER TYPE public."enum_Restaurantes_tipoComida" OWNER TO postgres;

--
-- Name: enum_SesionRepartidors_autenticated; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_SesionRepartidors_autenticated" AS ENUM (
    'LoggedIn',
    'LoggedOut'
);


ALTER TYPE public."enum_SesionRepartidors_autenticated" OWNER TO postgres;

--
-- Name: enum_SesionRestauranteros_autenticated; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_SesionRestauranteros_autenticated" AS ENUM (
    'LoggedIn',
    'LoggedOut'
);


ALTER TYPE public."enum_SesionRestauranteros_autenticated" OWNER TO postgres;

--
-- Name: enum_Sesions_autenticated; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public."enum_Sesions_autenticated" AS ENUM (
    'LoggedIn',
    'LoggedOut'
);


ALTER TYPE public."enum_Sesions_autenticated" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Ciudads; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ciudads" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    ubicacion character varying(255) NOT NULL
);


ALTER TABLE public."Ciudads" OWNER TO postgres;

--
-- Name: Ciudads_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ciudads_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ciudads_id_seq" OWNER TO postgres;

--
-- Name: Ciudads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ciudads_id_seq" OWNED BY public."Ciudads".id;


--
-- Name: ClienteRestauranteros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ClienteRestauranteros" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    usuario character varying(255) NOT NULL,
    "contrase├▒a" character varying(255) NOT NULL,
    tipo_de_usuario public."enum_ClienteRestauranteros_tipo_de_usuario" NOT NULL,
    "CorporativoId" integer
);


ALTER TABLE public."ClienteRestauranteros" OWNER TO postgres;

--
-- Name: ClienteRestauranteros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ClienteRestauranteros_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ClienteRestauranteros_id_seq" OWNER TO postgres;

--
-- Name: ClienteRestauranteros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ClienteRestauranteros_id_seq" OWNED BY public."ClienteRestauranteros".id;


--
-- Name: Clientefinals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Clientefinals" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    usuario character varying(255) NOT NULL,
    "contrase├▒a" character varying(255) NOT NULL
);


ALTER TABLE public."Clientefinals" OWNER TO postgres;

--
-- Name: Clientefinals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Clientefinals_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Clientefinals_id_seq" OWNER TO postgres;

--
-- Name: Clientefinals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Clientefinals_id_seq" OWNED BY public."Clientefinals".id;


--
-- Name: ComprasJuntas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ComprasJuntas" (
    id integer NOT NULL,
    nombre character varying(255)
);


ALTER TABLE public."ComprasJuntas" OWNER TO postgres;

--
-- Name: ComprasJuntas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ComprasJuntas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ComprasJuntas_id_seq" OWNER TO postgres;

--
-- Name: ComprasJuntas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ComprasJuntas_id_seq" OWNED BY public."ComprasJuntas".id;


--
-- Name: Corporativos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Corporativos" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL
);


ALTER TABLE public."Corporativos" OWNER TO postgres;

--
-- Name: Corporativos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Corporativos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Corporativos_id_seq" OWNER TO postgres;

--
-- Name: Corporativos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Corporativos_id_seq" OWNED BY public."Corporativos".id;


--
-- Name: DireccionClientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DireccionClientes" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ClientefinalId" integer NOT NULL,
    "DireccionId" integer NOT NULL
);


ALTER TABLE public."DireccionClientes" OWNER TO postgres;

--
-- Name: Direccions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Direccions" (
    id integer NOT NULL,
    direccion character varying(255) NOT NULL,
    "RestauranteId" integer,
    "RepartidorId" integer
);


ALTER TABLE public."Direccions" OWNER TO postgres;

--
-- Name: Direccions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Direccions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Direccions_id_seq" OWNER TO postgres;

--
-- Name: Direccions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Direccions_id_seq" OWNED BY public."Direccions".id;


--
-- Name: Envios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Envios" (
    id integer NOT NULL,
    reparto public."enum_Envios_reparto" NOT NULL,
    tiempo_promedio integer,
    "RepartidorId" integer,
    "RestauranteId" integer,
    "PedidoId" integer
);


ALTER TABLE public."Envios" OWNER TO postgres;

--
-- Name: Envios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Envios_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Envios_id_seq" OWNER TO postgres;

--
-- Name: Envios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Envios_id_seq" OWNED BY public."Envios".id;


--
-- Name: Evaluaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Evaluaciones" (
    id integer NOT NULL,
    "Rating" public."enum_Evaluaciones_Rating" NOT NULL,
    "Tipo" public."enum_Evaluaciones_Tipo",
    "Comentario_publico" character varying(255),
    "Comentario_privado" character varying(255),
    "RestauranteId" integer,
    "PedidoId" integer,
    "RepartidorId" integer
);


ALTER TABLE public."Evaluaciones" OWNER TO postgres;

--
-- Name: Evaluaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Evaluaciones_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Evaluaciones_id_seq" OWNER TO postgres;

--
-- Name: Evaluaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Evaluaciones_id_seq" OWNED BY public."Evaluaciones".id;


--
-- Name: ImgPlatillos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ImgPlatillos" (
    id integer NOT NULL,
    type character varying(255),
    name character varying(255),
    data bytea,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "PlatilloId" integer
);


ALTER TABLE public."ImgPlatillos" OWNER TO postgres;

--
-- Name: ImgPlatillos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ImgPlatillos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ImgPlatillos_id_seq" OWNER TO postgres;

--
-- Name: ImgPlatillos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ImgPlatillos_id_seq" OWNED BY public."ImgPlatillos".id;


--
-- Name: ImgRests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ImgRests" (
    id integer NOT NULL,
    type character varying(255),
    name character varying(255),
    data bytea,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "RestauranteId" integer
);


ALTER TABLE public."ImgRests" OWNER TO postgres;

--
-- Name: ImgRests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ImgRests_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ImgRests_id_seq" OWNER TO postgres;

--
-- Name: ImgRests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ImgRests_id_seq" OWNED BY public."ImgRests".id;


--
-- Name: Ingredientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ingredientes" (
    id integer NOT NULL,
    nombre character varying(255)
);


ALTER TABLE public."Ingredientes" OWNER TO postgres;

--
-- Name: IngredientesExtraPlatillos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."IngredientesExtraPlatillos" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "IngredientesExtraId" integer NOT NULL,
    "PlatilloId" integer NOT NULL
);


ALTER TABLE public."IngredientesExtraPlatillos" OWNER TO postgres;

--
-- Name: IngredientesExtras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."IngredientesExtras" (
    id integer NOT NULL,
    nombre character varying(255)
);


ALTER TABLE public."IngredientesExtras" OWNER TO postgres;

--
-- Name: IngredientesExtras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."IngredientesExtras_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."IngredientesExtras_id_seq" OWNER TO postgres;

--
-- Name: IngredientesExtras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."IngredientesExtras_id_seq" OWNED BY public."IngredientesExtras".id;


--
-- Name: IngredientesPlatillos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."IngredientesPlatillos" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "PlatilloId" integer NOT NULL,
    "IngredienteId" integer NOT NULL
);


ALTER TABLE public."IngredientesPlatillos" OWNER TO postgres;

--
-- Name: Ingredientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ingredientes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ingredientes_id_seq" OWNER TO postgres;

--
-- Name: Ingredientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ingredientes_id_seq" OWNED BY public."Ingredientes".id;


--
-- Name: IngredientesaQuitarPlatillos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."IngredientesaQuitarPlatillos" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "IngredientesaQuitarId" integer NOT NULL,
    "PlatilloId" integer NOT NULL
);


ALTER TABLE public."IngredientesaQuitarPlatillos" OWNER TO postgres;

--
-- Name: IngredientesaQuitars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."IngredientesaQuitars" (
    id integer NOT NULL,
    nombre character varying(255)
);


ALTER TABLE public."IngredientesaQuitars" OWNER TO postgres;

--
-- Name: IngredientesaQuitars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."IngredientesaQuitars_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."IngredientesaQuitars_id_seq" OWNER TO postgres;

--
-- Name: IngredientesaQuitars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."IngredientesaQuitars_id_seq" OWNED BY public."IngredientesaQuitars".id;


--
-- Name: Menus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Menus" (
    id integer NOT NULL,
    nombre public."enum_Menus_nombre" NOT NULL
);


ALTER TABLE public."Menus" OWNER TO postgres;

--
-- Name: Menus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Menus_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Menus_id_seq" OWNER TO postgres;

--
-- Name: Menus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Menus_id_seq" OWNED BY public."Menus".id;


--
-- Name: MetodosdePagos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MetodosdePagos" (
    id integer NOT NULL,
    metodo_pago public."enum_MetodosdePagos_metodo_pago" NOT NULL,
    "ClientefinalId" integer
);


ALTER TABLE public."MetodosdePagos" OWNER TO postgres;

--
-- Name: MetodosdePagos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."MetodosdePagos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."MetodosdePagos_id_seq" OWNER TO postgres;

--
-- Name: MetodosdePagos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."MetodosdePagos_id_seq" OWNED BY public."MetodosdePagos".id;


--
-- Name: PedidoGrupalClientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PedidoGrupalClientes" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "PedidoGrupalId" integer NOT NULL,
    "ClientefinalId" integer NOT NULL
);


ALTER TABLE public."PedidoGrupalClientes" OWNER TO postgres;

--
-- Name: PedidoGrupals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PedidoGrupals" (
    id integer NOT NULL,
    notas character varying(255) NOT NULL,
    "PedidoId" integer
);


ALTER TABLE public."PedidoGrupals" OWNER TO postgres;

--
-- Name: PedidoGrupals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PedidoGrupals_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."PedidoGrupals_id_seq" OWNER TO postgres;

--
-- Name: PedidoGrupals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PedidoGrupals_id_seq" OWNED BY public."PedidoGrupals".id;


--
-- Name: Pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pedidos" (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    status public."enum_Pedidos_status",
    "tipo_de_Entrega" public."enum_Pedidos_tipo_de_Entrega" NOT NULL,
    notas character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ClientefinalId" integer
);


ALTER TABLE public."Pedidos" OWNER TO postgres;

--
-- Name: PedidosRestaurantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PedidosRestaurantes" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "RestauranteId" integer NOT NULL,
    "PedidoId" integer NOT NULL
);


ALTER TABLE public."PedidosRestaurantes" OWNER TO postgres;

--
-- Name: Pedidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Pedidos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pedidos_id_seq" OWNER TO postgres;

--
-- Name: Pedidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pedidos_id_seq" OWNED BY public."Pedidos".id;


--
-- Name: PlatilloPedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PlatilloPedido" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "PedidoId" integer NOT NULL,
    "PlatilloId" integer NOT NULL
);


ALTER TABLE public."PlatilloPedido" OWNER TO postgres;

--
-- Name: Platillos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Platillos" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    precio integer NOT NULL,
    menu public."enum_Platillos_menu" NOT NULL,
    "RestauranteId" integer
);


ALTER TABLE public."Platillos" OWNER TO postgres;

--
-- Name: PlatillosJuntos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PlatillosJuntos" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "PlatilloId" integer NOT NULL,
    "ComprasJuntaId" integer NOT NULL
);


ALTER TABLE public."PlatillosJuntos" OWNER TO postgres;

--
-- Name: Platillos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Platillos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Platillos_id_seq" OWNER TO postgres;

--
-- Name: Platillos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Platillos_id_seq" OWNED BY public."Platillos".id;


--
-- Name: Repartidors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Repartidors" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    usuario character varying(255) NOT NULL,
    "contrase├▒a" character varying(255) NOT NULL,
    estatus public."enum_Repartidors_estatus" NOT NULL
);


ALTER TABLE public."Repartidors" OWNER TO postgres;

--
-- Name: Repartidors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Repartidors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Repartidors_id_seq" OWNER TO postgres;

--
-- Name: Repartidors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Repartidors_id_seq" OWNED BY public."Repartidors".id;


--
-- Name: RestaurantClientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RestaurantClientes" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    usuario character varying(255) NOT NULL,
    "contrase├▒a" character varying(255) NOT NULL,
    tipo_de_usuario public."enum_RestaurantClientes_tipo_de_usuario" NOT NULL
);


ALTER TABLE public."RestaurantClientes" OWNER TO postgres;

--
-- Name: RestaurantClientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RestaurantClientes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RestaurantClientes_id_seq" OWNER TO postgres;

--
-- Name: RestaurantClientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RestaurantClientes_id_seq" OWNED BY public."RestaurantClientes".id;


--
-- Name: RestaurantDetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RestaurantDetails" (
    id integer NOT NULL,
    "costoEnvio" integer NOT NULL,
    horarios character varying(255) NOT NULL,
    "tipoComida" public."enum_RestaurantDetails_tipoComida" NOT NULL,
    "RestauranteId" integer
);


ALTER TABLE public."RestaurantDetails" OWNER TO postgres;

--
-- Name: RestaurantDetails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RestaurantDetails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RestaurantDetails_id_seq" OWNER TO postgres;

--
-- Name: RestaurantDetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RestaurantDetails_id_seq" OWNED BY public."RestaurantDetails".id;


--
-- Name: Restaurantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Restaurantes" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    area_de_reparto double precision NOT NULL,
    actividad public."enum_Restaurantes_actividad" NOT NULL,
    estatus public."enum_Restaurantes_estatus" NOT NULL,
    "urlTitle" character varying(255) NOT NULL,
    "costoEnvio" integer NOT NULL,
    horarios character varying(255) NOT NULL,
    "tipoComida" public."enum_Restaurantes_tipoComida" NOT NULL,
    location json NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CorporativoId" integer
);


ALTER TABLE public."Restaurantes" OWNER TO postgres;

--
-- Name: Restaurantes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Restaurantes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Restaurantes_id_seq" OWNER TO postgres;

--
-- Name: Restaurantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Restaurantes_id_seq" OWNED BY public."Restaurantes".id;


--
-- Name: SesionRepartidors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SesionRepartidors" (
    id integer NOT NULL,
    autenticated public."enum_SesionRepartidors_autenticated" NOT NULL,
    "RepartidorId" integer
);


ALTER TABLE public."SesionRepartidors" OWNER TO postgres;

--
-- Name: SesionRepartidors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SesionRepartidors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SesionRepartidors_id_seq" OWNER TO postgres;

--
-- Name: SesionRepartidors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SesionRepartidors_id_seq" OWNED BY public."SesionRepartidors".id;


--
-- Name: SesionRestauranteros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SesionRestauranteros" (
    id integer NOT NULL,
    autenticated public."enum_SesionRestauranteros_autenticated" NOT NULL,
    "ClienteRestauranteroId" integer
);


ALTER TABLE public."SesionRestauranteros" OWNER TO postgres;

--
-- Name: SesionRestauranteros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."SesionRestauranteros_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."SesionRestauranteros_id_seq" OWNER TO postgres;

--
-- Name: SesionRestauranteros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."SesionRestauranteros_id_seq" OWNED BY public."SesionRestauranteros".id;


--
-- Name: Sesions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sesions" (
    id integer NOT NULL,
    autenticated public."enum_Sesions_autenticated" NOT NULL,
    "ClientefinalId" integer
);


ALTER TABLE public."Sesions" OWNER TO postgres;

--
-- Name: Sesions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Sesions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Sesions_id_seq" OWNER TO postgres;

--
-- Name: Sesions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Sesions_id_seq" OWNED BY public."Sesions".id;


--
-- Name: TipodeComidas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TipodeComidas" (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    "RestauranteId" integer
);


ALTER TABLE public."TipodeComidas" OWNER TO postgres;

--
-- Name: TipodeComidas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."TipodeComidas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."TipodeComidas_id_seq" OWNER TO postgres;

--
-- Name: TipodeComidas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."TipodeComidas_id_seq" OWNED BY public."TipodeComidas".id;


--
-- Name: UbicacionRepartidors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UbicacionRepartidors" (
    id integer NOT NULL,
    ubicacion jsonb NOT NULL,
    "RepartidorId" integer
);


ALTER TABLE public."UbicacionRepartidors" OWNER TO postgres;

--
-- Name: UbicacionRepartidors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UbicacionRepartidors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."UbicacionRepartidors_id_seq" OWNER TO postgres;

--
-- Name: UbicacionRepartidors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UbicacionRepartidors_id_seq" OWNED BY public."UbicacionRepartidors".id;


--
-- Name: Usuario-Coporativo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario-Coporativo" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ClienteRestauranteroId" integer NOT NULL,
    "CorporativoId" integer NOT NULL
);


ALTER TABLE public."Usuario-Coporativo" OWNER TO postgres;

--
-- Name: Usuario-Restaurantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario-Restaurantes" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ClienteRestauranteroId" integer NOT NULL,
    "RestauranteId" integer NOT NULL
);


ALTER TABLE public."Usuario-Restaurantes" OWNER TO postgres;

--
-- Name: Ciudads id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ciudads" ALTER COLUMN id SET DEFAULT nextval('public."Ciudads_id_seq"'::regclass);


--
-- Name: ClienteRestauranteros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ClienteRestauranteros" ALTER COLUMN id SET DEFAULT nextval('public."ClienteRestauranteros_id_seq"'::regclass);


--
-- Name: Clientefinals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clientefinals" ALTER COLUMN id SET DEFAULT nextval('public."Clientefinals_id_seq"'::regclass);


--
-- Name: ComprasJuntas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ComprasJuntas" ALTER COLUMN id SET DEFAULT nextval('public."ComprasJuntas_id_seq"'::regclass);


--
-- Name: Corporativos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporativos" ALTER COLUMN id SET DEFAULT nextval('public."Corporativos_id_seq"'::regclass);


--
-- Name: Direccions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Direccions" ALTER COLUMN id SET DEFAULT nextval('public."Direccions_id_seq"'::regclass);


--
-- Name: Envios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Envios" ALTER COLUMN id SET DEFAULT nextval('public."Envios_id_seq"'::regclass);


--
-- Name: Evaluaciones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Evaluaciones" ALTER COLUMN id SET DEFAULT nextval('public."Evaluaciones_id_seq"'::regclass);


--
-- Name: ImgPlatillos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ImgPlatillos" ALTER COLUMN id SET DEFAULT nextval('public."ImgPlatillos_id_seq"'::regclass);


--
-- Name: ImgRests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ImgRests" ALTER COLUMN id SET DEFAULT nextval('public."ImgRests_id_seq"'::regclass);


--
-- Name: Ingredientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ingredientes" ALTER COLUMN id SET DEFAULT nextval('public."Ingredientes_id_seq"'::regclass);


--
-- Name: IngredientesExtras id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesExtras" ALTER COLUMN id SET DEFAULT nextval('public."IngredientesExtras_id_seq"'::regclass);


--
-- Name: IngredientesaQuitars id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesaQuitars" ALTER COLUMN id SET DEFAULT nextval('public."IngredientesaQuitars_id_seq"'::regclass);


--
-- Name: Menus id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menus" ALTER COLUMN id SET DEFAULT nextval('public."Menus_id_seq"'::regclass);


--
-- Name: MetodosdePagos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MetodosdePagos" ALTER COLUMN id SET DEFAULT nextval('public."MetodosdePagos_id_seq"'::regclass);


--
-- Name: PedidoGrupals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PedidoGrupals" ALTER COLUMN id SET DEFAULT nextval('public."PedidoGrupals_id_seq"'::regclass);


--
-- Name: Pedidos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pedidos" ALTER COLUMN id SET DEFAULT nextval('public."Pedidos_id_seq"'::regclass);


--
-- Name: Platillos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Platillos" ALTER COLUMN id SET DEFAULT nextval('public."Platillos_id_seq"'::regclass);


--
-- Name: Repartidors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Repartidors" ALTER COLUMN id SET DEFAULT nextval('public."Repartidors_id_seq"'::regclass);


--
-- Name: RestaurantClientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RestaurantClientes" ALTER COLUMN id SET DEFAULT nextval('public."RestaurantClientes_id_seq"'::regclass);


--
-- Name: RestaurantDetails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RestaurantDetails" ALTER COLUMN id SET DEFAULT nextval('public."RestaurantDetails_id_seq"'::regclass);


--
-- Name: Restaurantes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Restaurantes" ALTER COLUMN id SET DEFAULT nextval('public."Restaurantes_id_seq"'::regclass);


--
-- Name: SesionRepartidors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SesionRepartidors" ALTER COLUMN id SET DEFAULT nextval('public."SesionRepartidors_id_seq"'::regclass);


--
-- Name: SesionRestauranteros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SesionRestauranteros" ALTER COLUMN id SET DEFAULT nextval('public."SesionRestauranteros_id_seq"'::regclass);


--
-- Name: Sesions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sesions" ALTER COLUMN id SET DEFAULT nextval('public."Sesions_id_seq"'::regclass);


--
-- Name: TipodeComidas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TipodeComidas" ALTER COLUMN id SET DEFAULT nextval('public."TipodeComidas_id_seq"'::regclass);


--
-- Name: UbicacionRepartidors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UbicacionRepartidors" ALTER COLUMN id SET DEFAULT nextval('public."UbicacionRepartidors_id_seq"'::regclass);


--
-- Data for Name: Ciudads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ciudads" (id, nombre, ubicacion) FROM stdin;
\.


--
-- Data for Name: ClienteRestauranteros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ClienteRestauranteros" (id, nombre, usuario, "contrase├▒a", tipo_de_usuario, "CorporativoId") FROM stdin;
\.


--
-- Data for Name: Clientefinals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Clientefinals" (id, nombre, usuario, "contrase├▒a") FROM stdin;
\.


--
-- Data for Name: ComprasJuntas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ComprasJuntas" (id, nombre) FROM stdin;
\.


--
-- Data for Name: Corporativos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Corporativos" (id, nombre, direccion) FROM stdin;
\.


--
-- Data for Name: DireccionClientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."DireccionClientes" ("createdAt", "updatedAt", "ClientefinalId", "DireccionId") FROM stdin;
\.


--
-- Data for Name: Direccions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Direccions" (id, direccion, "RestauranteId", "RepartidorId") FROM stdin;
\.


--
-- Data for Name: Envios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Envios" (id, reparto, tiempo_promedio, "RepartidorId", "RestauranteId", "PedidoId") FROM stdin;
\.


--
-- Data for Name: Evaluaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Evaluaciones" (id, "Rating", "Tipo", "Comentario_publico", "Comentario_privado", "RestauranteId", "PedidoId", "RepartidorId") FROM stdin;
\.


--
-- Data for Name: ImgPlatillos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ImgPlatillos" (id, type, name, data, "createdAt", "updatedAt", "PlatilloId") FROM stdin;
\.


--
-- Data for Name: ImgRests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ImgRests" (id, type, name, data, "createdAt", "updatedAt", "RestauranteId") FROM stdin;
\.


--
-- Data for Name: Ingredientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ingredientes" (id, nombre) FROM stdin;
\.


--
-- Data for Name: IngredientesExtraPlatillos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."IngredientesExtraPlatillos" ("createdAt", "updatedAt", "IngredientesExtraId", "PlatilloId") FROM stdin;
\.


--
-- Data for Name: IngredientesExtras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."IngredientesExtras" (id, nombre) FROM stdin;
\.


--
-- Data for Name: IngredientesPlatillos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."IngredientesPlatillos" ("createdAt", "updatedAt", "PlatilloId", "IngredienteId") FROM stdin;
\.


--
-- Data for Name: IngredientesaQuitarPlatillos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."IngredientesaQuitarPlatillos" ("createdAt", "updatedAt", "IngredientesaQuitarId", "PlatilloId") FROM stdin;
\.


--
-- Data for Name: IngredientesaQuitars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."IngredientesaQuitars" (id, nombre) FROM stdin;
\.


--
-- Data for Name: Menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Menus" (id, nombre) FROM stdin;
\.


--
-- Data for Name: MetodosdePagos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MetodosdePagos" (id, metodo_pago, "ClientefinalId") FROM stdin;
\.


--
-- Data for Name: PedidoGrupalClientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PedidoGrupalClientes" ("createdAt", "updatedAt", "PedidoGrupalId", "ClientefinalId") FROM stdin;
\.


--
-- Data for Name: PedidoGrupals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PedidoGrupals" (id, notas, "PedidoId") FROM stdin;
\.


--
-- Data for Name: Pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pedidos" (id, cantidad, status, "tipo_de_Entrega", notas, "createdAt", "updatedAt", "ClientefinalId") FROM stdin;
\.


--
-- Data for Name: PedidosRestaurantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PedidosRestaurantes" ("createdAt", "updatedAt", "RestauranteId", "PedidoId") FROM stdin;
\.


--
-- Data for Name: PlatilloPedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PlatilloPedido" ("createdAt", "updatedAt", "PedidoId", "PlatilloId") FROM stdin;
\.


--
-- Data for Name: Platillos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Platillos" (id, nombre, descripcion, precio, menu, "RestauranteId") FROM stdin;
\.


--
-- Data for Name: PlatillosJuntos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PlatillosJuntos" ("createdAt", "updatedAt", "PlatilloId", "ComprasJuntaId") FROM stdin;
\.


--
-- Data for Name: Repartidors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Repartidors" (id, nombre, usuario, "contrase├▒a", estatus) FROM stdin;
\.


--
-- Data for Name: RestaurantClientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RestaurantClientes" (id, nombre, usuario, "contrase├▒a", tipo_de_usuario) FROM stdin;
1	Emiliano Borbon	Eborbon	Eborbon	Director_General
\.


--
-- Data for Name: RestaurantDetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RestaurantDetails" (id, "costoEnvio", horarios, "tipoComida", "RestauranteId") FROM stdin;
\.


--
-- Data for Name: Restaurantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Restaurantes" (id, nombre, direccion, area_de_reparto, actividad, estatus, "urlTitle", "costoEnvio", horarios, "tipoComida", location, "createdAt", "updatedAt", "CorporativoId") FROM stdin;
\.


--
-- Data for Name: SesionRepartidors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SesionRepartidors" (id, autenticated, "RepartidorId") FROM stdin;
\.


--
-- Data for Name: SesionRestauranteros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SesionRestauranteros" (id, autenticated, "ClienteRestauranteroId") FROM stdin;
\.


--
-- Data for Name: Sesions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Sesions" (id, autenticated, "ClientefinalId") FROM stdin;
\.


--
-- Data for Name: TipodeComidas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TipodeComidas" (id, nombre, "RestauranteId") FROM stdin;
\.


--
-- Data for Name: UbicacionRepartidors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UbicacionRepartidors" (id, ubicacion, "RepartidorId") FROM stdin;
\.


--
-- Data for Name: Usuario-Coporativo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario-Coporativo" ("createdAt", "updatedAt", "ClienteRestauranteroId", "CorporativoId") FROM stdin;
\.


--
-- Data for Name: Usuario-Restaurantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario-Restaurantes" ("createdAt", "updatedAt", "ClienteRestauranteroId", "RestauranteId") FROM stdin;
\.


--
-- Name: Ciudads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ciudads_id_seq"', 1, false);


--
-- Name: ClienteRestauranteros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ClienteRestauranteros_id_seq"', 1, false);


--
-- Name: Clientefinals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Clientefinals_id_seq"', 1, false);


--
-- Name: ComprasJuntas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ComprasJuntas_id_seq"', 1, false);


--
-- Name: Corporativos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Corporativos_id_seq"', 1, false);


--
-- Name: Direccions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Direccions_id_seq"', 1, false);


--
-- Name: Envios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Envios_id_seq"', 1, false);


--
-- Name: Evaluaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Evaluaciones_id_seq"', 1, false);


--
-- Name: ImgPlatillos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ImgPlatillos_id_seq"', 1, false);


--
-- Name: ImgRests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ImgRests_id_seq"', 1, false);


--
-- Name: IngredientesExtras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."IngredientesExtras_id_seq"', 1, false);


--
-- Name: Ingredientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ingredientes_id_seq"', 1, false);


--
-- Name: IngredientesaQuitars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."IngredientesaQuitars_id_seq"', 1, false);


--
-- Name: Menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Menus_id_seq"', 1, false);


--
-- Name: MetodosdePagos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."MetodosdePagos_id_seq"', 1, false);


--
-- Name: PedidoGrupals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PedidoGrupals_id_seq"', 1, false);


--
-- Name: Pedidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pedidos_id_seq"', 1, false);


--
-- Name: Platillos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Platillos_id_seq"', 1, false);


--
-- Name: Repartidors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Repartidors_id_seq"', 1, false);


--
-- Name: RestaurantClientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RestaurantClientes_id_seq"', 1, true);


--
-- Name: RestaurantDetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RestaurantDetails_id_seq"', 1, false);


--
-- Name: Restaurantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Restaurantes_id_seq"', 1, false);


--
-- Name: SesionRepartidors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SesionRepartidors_id_seq"', 1, false);


--
-- Name: SesionRestauranteros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."SesionRestauranteros_id_seq"', 1, false);


--
-- Name: Sesions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Sesions_id_seq"', 1, false);


--
-- Name: TipodeComidas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."TipodeComidas_id_seq"', 1, false);


--
-- Name: UbicacionRepartidors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UbicacionRepartidors_id_seq"', 1, false);


--
-- Name: Ciudads Ciudads_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ciudads"
    ADD CONSTRAINT "Ciudads_nombre_key" UNIQUE (nombre);


--
-- Name: Ciudads Ciudads_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ciudads"
    ADD CONSTRAINT "Ciudads_pkey" PRIMARY KEY (id);


--
-- Name: ClienteRestauranteros ClienteRestauranteros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ClienteRestauranteros"
    ADD CONSTRAINT "ClienteRestauranteros_pkey" PRIMARY KEY (id);


--
-- Name: ClienteRestauranteros ClienteRestauranteros_usuario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ClienteRestauranteros"
    ADD CONSTRAINT "ClienteRestauranteros_usuario_key" UNIQUE (usuario);


--
-- Name: Clientefinals Clientefinals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clientefinals"
    ADD CONSTRAINT "Clientefinals_pkey" PRIMARY KEY (id);


--
-- Name: Clientefinals Clientefinals_usuario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clientefinals"
    ADD CONSTRAINT "Clientefinals_usuario_key" UNIQUE (usuario);


--
-- Name: ComprasJuntas ComprasJuntas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ComprasJuntas"
    ADD CONSTRAINT "ComprasJuntas_pkey" PRIMARY KEY (id);


--
-- Name: Corporativos Corporativos_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporativos"
    ADD CONSTRAINT "Corporativos_nombre_key" UNIQUE (nombre);


--
-- Name: Corporativos Corporativos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Corporativos"
    ADD CONSTRAINT "Corporativos_pkey" PRIMARY KEY (id);


--
-- Name: DireccionClientes DireccionClientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DireccionClientes"
    ADD CONSTRAINT "DireccionClientes_pkey" PRIMARY KEY ("ClientefinalId", "DireccionId");


--
-- Name: Direccions Direccions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Direccions"
    ADD CONSTRAINT "Direccions_pkey" PRIMARY KEY (id);


--
-- Name: Envios Envios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Envios"
    ADD CONSTRAINT "Envios_pkey" PRIMARY KEY (id);


--
-- Name: Evaluaciones Evaluaciones_Rating_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Evaluaciones"
    ADD CONSTRAINT "Evaluaciones_Rating_key" UNIQUE ("Rating");


--
-- Name: Evaluaciones Evaluaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Evaluaciones"
    ADD CONSTRAINT "Evaluaciones_pkey" PRIMARY KEY (id);


--
-- Name: ImgPlatillos ImgPlatillos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ImgPlatillos"
    ADD CONSTRAINT "ImgPlatillos_pkey" PRIMARY KEY (id);


--
-- Name: ImgRests ImgRests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ImgRests"
    ADD CONSTRAINT "ImgRests_pkey" PRIMARY KEY (id);


--
-- Name: IngredientesExtraPlatillos IngredientesExtraPlatillos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesExtraPlatillos"
    ADD CONSTRAINT "IngredientesExtraPlatillos_pkey" PRIMARY KEY ("IngredientesExtraId", "PlatilloId");


--
-- Name: IngredientesExtras IngredientesExtras_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesExtras"
    ADD CONSTRAINT "IngredientesExtras_nombre_key" UNIQUE (nombre);


--
-- Name: IngredientesExtras IngredientesExtras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesExtras"
    ADD CONSTRAINT "IngredientesExtras_pkey" PRIMARY KEY (id);


--
-- Name: IngredientesPlatillos IngredientesPlatillos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesPlatillos"
    ADD CONSTRAINT "IngredientesPlatillos_pkey" PRIMARY KEY ("PlatilloId", "IngredienteId");


--
-- Name: Ingredientes Ingredientes_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ingredientes"
    ADD CONSTRAINT "Ingredientes_nombre_key" UNIQUE (nombre);


--
-- Name: Ingredientes Ingredientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ingredientes"
    ADD CONSTRAINT "Ingredientes_pkey" PRIMARY KEY (id);


--
-- Name: IngredientesaQuitarPlatillos IngredientesaQuitarPlatillos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesaQuitarPlatillos"
    ADD CONSTRAINT "IngredientesaQuitarPlatillos_pkey" PRIMARY KEY ("IngredientesaQuitarId", "PlatilloId");


--
-- Name: IngredientesaQuitars IngredientesaQuitars_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesaQuitars"
    ADD CONSTRAINT "IngredientesaQuitars_nombre_key" UNIQUE (nombre);


--
-- Name: IngredientesaQuitars IngredientesaQuitars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesaQuitars"
    ADD CONSTRAINT "IngredientesaQuitars_pkey" PRIMARY KEY (id);


--
-- Name: Menus Menus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menus"
    ADD CONSTRAINT "Menus_pkey" PRIMARY KEY (id);


--
-- Name: MetodosdePagos MetodosdePagos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MetodosdePagos"
    ADD CONSTRAINT "MetodosdePagos_pkey" PRIMARY KEY (id);


--
-- Name: PedidoGrupalClientes PedidoGrupalClientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PedidoGrupalClientes"
    ADD CONSTRAINT "PedidoGrupalClientes_pkey" PRIMARY KEY ("PedidoGrupalId", "ClientefinalId");


--
-- Name: PedidoGrupals PedidoGrupals_notas_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PedidoGrupals"
    ADD CONSTRAINT "PedidoGrupals_notas_key" UNIQUE (notas);


--
-- Name: PedidoGrupals PedidoGrupals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PedidoGrupals"
    ADD CONSTRAINT "PedidoGrupals_pkey" PRIMARY KEY (id);


--
-- Name: PedidosRestaurantes PedidosRestaurantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PedidosRestaurantes"
    ADD CONSTRAINT "PedidosRestaurantes_pkey" PRIMARY KEY ("RestauranteId", "PedidoId");


--
-- Name: Pedidos Pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pedidos"
    ADD CONSTRAINT "Pedidos_pkey" PRIMARY KEY (id);


--
-- Name: PlatilloPedido PlatilloPedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PlatilloPedido"
    ADD CONSTRAINT "PlatilloPedido_pkey" PRIMARY KEY ("PedidoId", "PlatilloId");


--
-- Name: PlatillosJuntos PlatillosJuntos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PlatillosJuntos"
    ADD CONSTRAINT "PlatillosJuntos_pkey" PRIMARY KEY ("PlatilloId", "ComprasJuntaId");


--
-- Name: Platillos Platillos_descripcion_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Platillos"
    ADD CONSTRAINT "Platillos_descripcion_key" UNIQUE (descripcion);


--
-- Name: Platillos Platillos_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Platillos"
    ADD CONSTRAINT "Platillos_nombre_key" UNIQUE (nombre);


--
-- Name: Platillos Platillos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Platillos"
    ADD CONSTRAINT "Platillos_pkey" PRIMARY KEY (id);


--
-- Name: Repartidors Repartidors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Repartidors"
    ADD CONSTRAINT "Repartidors_pkey" PRIMARY KEY (id);


--
-- Name: Repartidors Repartidors_usuario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Repartidors"
    ADD CONSTRAINT "Repartidors_usuario_key" UNIQUE (usuario);


--
-- Name: RestaurantClientes RestaurantClientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RestaurantClientes"
    ADD CONSTRAINT "RestaurantClientes_pkey" PRIMARY KEY (id);


--
-- Name: RestaurantClientes RestaurantClientes_usuario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RestaurantClientes"
    ADD CONSTRAINT "RestaurantClientes_usuario_key" UNIQUE (usuario);


--
-- Name: RestaurantDetails RestaurantDetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RestaurantDetails"
    ADD CONSTRAINT "RestaurantDetails_pkey" PRIMARY KEY (id);


--
-- Name: Restaurantes Restaurantes_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Restaurantes"
    ADD CONSTRAINT "Restaurantes_nombre_key" UNIQUE (nombre);


--
-- Name: Restaurantes Restaurantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Restaurantes"
    ADD CONSTRAINT "Restaurantes_pkey" PRIMARY KEY (id);


--
-- Name: Restaurantes Restaurantes_urlTitle_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Restaurantes"
    ADD CONSTRAINT "Restaurantes_urlTitle_key" UNIQUE ("urlTitle");


--
-- Name: SesionRepartidors SesionRepartidors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SesionRepartidors"
    ADD CONSTRAINT "SesionRepartidors_pkey" PRIMARY KEY (id);


--
-- Name: SesionRestauranteros SesionRestauranteros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SesionRestauranteros"
    ADD CONSTRAINT "SesionRestauranteros_pkey" PRIMARY KEY (id);


--
-- Name: Sesions Sesions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sesions"
    ADD CONSTRAINT "Sesions_pkey" PRIMARY KEY (id);


--
-- Name: TipodeComidas TipodeComidas_nombre_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TipodeComidas"
    ADD CONSTRAINT "TipodeComidas_nombre_key" UNIQUE (nombre);


--
-- Name: TipodeComidas TipodeComidas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TipodeComidas"
    ADD CONSTRAINT "TipodeComidas_pkey" PRIMARY KEY (id);


--
-- Name: UbicacionRepartidors UbicacionRepartidors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UbicacionRepartidors"
    ADD CONSTRAINT "UbicacionRepartidors_pkey" PRIMARY KEY (id);


--
-- Name: Usuario-Coporativo Usuario-Coporativo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario-Coporativo"
    ADD CONSTRAINT "Usuario-Coporativo_pkey" PRIMARY KEY ("ClienteRestauranteroId", "CorporativoId");


--
-- Name: Usuario-Restaurantes Usuario-Restaurantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario-Restaurantes"
    ADD CONSTRAINT "Usuario-Restaurantes_pkey" PRIMARY KEY ("ClienteRestauranteroId", "RestauranteId");


--
-- Name: ClienteRestauranteros ClienteRestauranteros_CorporativoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ClienteRestauranteros"
    ADD CONSTRAINT "ClienteRestauranteros_CorporativoId_fkey" FOREIGN KEY ("CorporativoId") REFERENCES public."Corporativos"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DireccionClientes DireccionClientes_ClientefinalId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DireccionClientes"
    ADD CONSTRAINT "DireccionClientes_ClientefinalId_fkey" FOREIGN KEY ("ClientefinalId") REFERENCES public."Clientefinals"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: DireccionClientes DireccionClientes_DireccionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DireccionClientes"
    ADD CONSTRAINT "DireccionClientes_DireccionId_fkey" FOREIGN KEY ("DireccionId") REFERENCES public."Direccions"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Direccions Direccions_RepartidorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Direccions"
    ADD CONSTRAINT "Direccions_RepartidorId_fkey" FOREIGN KEY ("RepartidorId") REFERENCES public."Repartidors"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Direccions Direccions_RestauranteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Direccions"
    ADD CONSTRAINT "Direccions_RestauranteId_fkey" FOREIGN KEY ("RestauranteId") REFERENCES public."Restaurantes"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Envios Envios_PedidoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Envios"
    ADD CONSTRAINT "Envios_PedidoId_fkey" FOREIGN KEY ("PedidoId") REFERENCES public."Pedidos"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Envios Envios_RepartidorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Envios"
    ADD CONSTRAINT "Envios_RepartidorId_fkey" FOREIGN KEY ("RepartidorId") REFERENCES public."Repartidors"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Envios Envios_RestauranteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Envios"
    ADD CONSTRAINT "Envios_RestauranteId_fkey" FOREIGN KEY ("RestauranteId") REFERENCES public."Restaurantes"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Evaluaciones Evaluaciones_PedidoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Evaluaciones"
    ADD CONSTRAINT "Evaluaciones_PedidoId_fkey" FOREIGN KEY ("PedidoId") REFERENCES public."Pedidos"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Evaluaciones Evaluaciones_RepartidorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Evaluaciones"
    ADD CONSTRAINT "Evaluaciones_RepartidorId_fkey" FOREIGN KEY ("RepartidorId") REFERENCES public."Repartidors"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Evaluaciones Evaluaciones_RestauranteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Evaluaciones"
    ADD CONSTRAINT "Evaluaciones_RestauranteId_fkey" FOREIGN KEY ("RestauranteId") REFERENCES public."Restaurantes"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ImgPlatillos ImgPlatillos_PlatilloId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ImgPlatillos"
    ADD CONSTRAINT "ImgPlatillos_PlatilloId_fkey" FOREIGN KEY ("PlatilloId") REFERENCES public."Platillos"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ImgRests ImgRests_RestauranteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ImgRests"
    ADD CONSTRAINT "ImgRests_RestauranteId_fkey" FOREIGN KEY ("RestauranteId") REFERENCES public."Restaurantes"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: IngredientesExtraPlatillos IngredientesExtraPlatillos_IngredientesExtraId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesExtraPlatillos"
    ADD CONSTRAINT "IngredientesExtraPlatillos_IngredientesExtraId_fkey" FOREIGN KEY ("IngredientesExtraId") REFERENCES public."IngredientesExtras"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: IngredientesExtraPlatillos IngredientesExtraPlatillos_PlatilloId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesExtraPlatillos"
    ADD CONSTRAINT "IngredientesExtraPlatillos_PlatilloId_fkey" FOREIGN KEY ("PlatilloId") REFERENCES public."Platillos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: IngredientesPlatillos IngredientesPlatillos_IngredienteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesPlatillos"
    ADD CONSTRAINT "IngredientesPlatillos_IngredienteId_fkey" FOREIGN KEY ("IngredienteId") REFERENCES public."Ingredientes"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: IngredientesPlatillos IngredientesPlatillos_PlatilloId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesPlatillos"
    ADD CONSTRAINT "IngredientesPlatillos_PlatilloId_fkey" FOREIGN KEY ("PlatilloId") REFERENCES public."Platillos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: IngredientesaQuitarPlatillos IngredientesaQuitarPlatillos_IngredientesaQuitarId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesaQuitarPlatillos"
    ADD CONSTRAINT "IngredientesaQuitarPlatillos_IngredientesaQuitarId_fkey" FOREIGN KEY ("IngredientesaQuitarId") REFERENCES public."IngredientesaQuitars"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: IngredientesaQuitarPlatillos IngredientesaQuitarPlatillos_PlatilloId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."IngredientesaQuitarPlatillos"
    ADD CONSTRAINT "IngredientesaQuitarPlatillos_PlatilloId_fkey" FOREIGN KEY ("PlatilloId") REFERENCES public."Platillos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: MetodosdePagos MetodosdePagos_ClientefinalId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MetodosdePagos"
    ADD CONSTRAINT "MetodosdePagos_ClientefinalId_fkey" FOREIGN KEY ("ClientefinalId") REFERENCES public."Clientefinals"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: PedidoGrupalClientes PedidoGrupalClientes_ClientefinalId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PedidoGrupalClientes"
    ADD CONSTRAINT "PedidoGrupalClientes_ClientefinalId_fkey" FOREIGN KEY ("ClientefinalId") REFERENCES public."Clientefinals"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: PedidoGrupalClientes PedidoGrupalClientes_PedidoGrupalId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PedidoGrupalClientes"
    ADD CONSTRAINT "PedidoGrupalClientes_PedidoGrupalId_fkey" FOREIGN KEY ("PedidoGrupalId") REFERENCES public."PedidoGrupals"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: PedidoGrupals PedidoGrupals_PedidoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PedidoGrupals"
    ADD CONSTRAINT "PedidoGrupals_PedidoId_fkey" FOREIGN KEY ("PedidoId") REFERENCES public."Pedidos"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: PedidosRestaurantes PedidosRestaurantes_PedidoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PedidosRestaurantes"
    ADD CONSTRAINT "PedidosRestaurantes_PedidoId_fkey" FOREIGN KEY ("PedidoId") REFERENCES public."Pedidos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: PedidosRestaurantes PedidosRestaurantes_RestauranteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PedidosRestaurantes"
    ADD CONSTRAINT "PedidosRestaurantes_RestauranteId_fkey" FOREIGN KEY ("RestauranteId") REFERENCES public."Restaurantes"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Pedidos Pedidos_ClientefinalId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pedidos"
    ADD CONSTRAINT "Pedidos_ClientefinalId_fkey" FOREIGN KEY ("ClientefinalId") REFERENCES public."Clientefinals"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: PlatilloPedido PlatilloPedido_PedidoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PlatilloPedido"
    ADD CONSTRAINT "PlatilloPedido_PedidoId_fkey" FOREIGN KEY ("PedidoId") REFERENCES public."Pedidos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: PlatilloPedido PlatilloPedido_PlatilloId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PlatilloPedido"
    ADD CONSTRAINT "PlatilloPedido_PlatilloId_fkey" FOREIGN KEY ("PlatilloId") REFERENCES public."Platillos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: PlatillosJuntos PlatillosJuntos_ComprasJuntaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PlatillosJuntos"
    ADD CONSTRAINT "PlatillosJuntos_ComprasJuntaId_fkey" FOREIGN KEY ("ComprasJuntaId") REFERENCES public."ComprasJuntas"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: PlatillosJuntos PlatillosJuntos_PlatilloId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PlatillosJuntos"
    ADD CONSTRAINT "PlatillosJuntos_PlatilloId_fkey" FOREIGN KEY ("PlatilloId") REFERENCES public."Platillos"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Platillos Platillos_RestauranteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Platillos"
    ADD CONSTRAINT "Platillos_RestauranteId_fkey" FOREIGN KEY ("RestauranteId") REFERENCES public."Restaurantes"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: RestaurantDetails RestaurantDetails_RestauranteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RestaurantDetails"
    ADD CONSTRAINT "RestaurantDetails_RestauranteId_fkey" FOREIGN KEY ("RestauranteId") REFERENCES public."Restaurantes"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Restaurantes Restaurantes_CorporativoId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Restaurantes"
    ADD CONSTRAINT "Restaurantes_CorporativoId_fkey" FOREIGN KEY ("CorporativoId") REFERENCES public."Corporativos"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: SesionRepartidors SesionRepartidors_RepartidorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SesionRepartidors"
    ADD CONSTRAINT "SesionRepartidors_RepartidorId_fkey" FOREIGN KEY ("RepartidorId") REFERENCES public."Repartidors"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: SesionRestauranteros SesionRestauranteros_ClienteRestauranteroId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SesionRestauranteros"
    ADD CONSTRAINT "SesionRestauranteros_ClienteRestauranteroId_fkey" FOREIGN KEY ("ClienteRestauranteroId") REFERENCES public."ClienteRestauranteros"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Sesions Sesions_ClientefinalId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sesions"
    ADD CONSTRAINT "Sesions_ClientefinalId_fkey" FOREIGN KEY ("ClientefinalId") REFERENCES public."Clientefinals"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: TipodeComidas TipodeComidas_RestauranteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TipodeComidas"
    ADD CONSTRAINT "TipodeComidas_RestauranteId_fkey" FOREIGN KEY ("RestauranteId") REFERENCES public."Restaurantes"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: UbicacionRepartidors UbicacionRepartidors_RepartidorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UbicacionRepartidors"
    ADD CONSTRAINT "UbicacionRepartidors_RepartidorId_fkey" FOREIGN KEY ("RepartidorId") REFERENCES public."Repartidors"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: Usuario-Restaurantes Usuario-Restaurantes_ClienteRestauranteroId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario-Restaurantes"
    ADD CONSTRAINT "Usuario-Restaurantes_ClienteRestauranteroId_fkey" FOREIGN KEY ("ClienteRestauranteroId") REFERENCES public."ClienteRestauranteros"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Usuario-Restaurantes Usuario-Restaurantes_RestauranteId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario-Restaurantes"
    ADD CONSTRAINT "Usuario-Restaurantes_RestauranteId_fkey" FOREIGN KEY ("RestauranteId") REFERENCES public."Restaurantes"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

