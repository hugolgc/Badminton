<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'genesis' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'root' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', 'root' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'jD#&B33Do0<s8pM/2MNMR adRviQ6t{Lsp7D?UnS_@*%D}>|kZ;$@W^f]=Yk`W#o' );
define( 'SECURE_AUTH_KEY',  '0[u=Ku].bao&bV[B$NvWuO=;Cv!$_Hv$ S1m6#nkJq!BHju*.Qp$I~Js9h`Ei!6Z' );
define( 'LOGGED_IN_KEY',    'bK00rwg7Wnd8#_sCJ~JTrv3Z=/wni.;C~,j<CKD0P/3P:DlB.[A)FXjlVH-^O^;Y' );
define( 'NONCE_KEY',        '5]HV!=r-PhKN@3B?#^&vXScIjn,7QIjKP.z?-^j^W$4ZZW^^05giDO%q-68^7^F^' );
define( 'AUTH_SALT',        'gbR1~fU`(~e{Ke+gx=7Vv:@P7eVYDjGlxH,Sxt*brRnWIij^g!PDA%/kjqDo~g2+' );
define( 'SECURE_AUTH_SALT', 'JS8m2c:OX%XDW%0F|b(]3~m*k 0g8S,<aDJhipq=2%B(?ajP<<3ZySq~^U1SMCeI' );
define( 'LOGGED_IN_SALT',   'rBiG$U7c }pPmYYK?4Fu*AZs*He==Tz^Q@3+el1B3c-k2F<u3]X&c!O6y3H@p7u ' );
define( 'NONCE_SALT',       'c=UM-o<e|Tz|zkKHv9Lzs*ScM=a ?xfk9Ja_T^Lr}ra}*p@(a9GBz1!BQj:-3MiO' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );
