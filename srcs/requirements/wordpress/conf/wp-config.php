<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'inception_db' );

/** Database username */
define( 'DB_USER', 'lmarecha' );

/** Database password */
define( 'DB_PASSWORD', 'password' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('WP_SITEURL', 'https://lmarecha.42.fr/');
define('WP_HOME', 'https://lmarecha.42.fr/wordpress/');
// define( 'WP_SITEURL', 'https://lmarecha.42.fr/wordpress' );
/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '/iUt-3siI)T&f=97s9QG|8u@nP`cB-~TL{x{9jYE@;GCB(4/v*t{UD.3>&=Zq>.r' );
define( 'SECURE_AUTH_KEY',   '3)C!Q(L^|Ct2T8!Z;~b~?$)jZG`aIoATNV[H`@$Y>0CbUshUHq[d7+RW3I<?wW<?' );
define( 'LOGGED_IN_KEY',     'WLV7[$j{,HgQ,Or8i!#.PPi=7gu)%|t!3lQLmpYovo3r<PLlEWCQ7]%>L+[?}iq0' );
define( 'NONCE_KEY',         '&W:6&vdEV8ZAr0{RXY13HSn_&~GuK.we+k~9MYzg~pW_$E-~p>/4Rs!_`j= upJw' );
define( 'AUTH_SALT',         'J(F[__2)|]Qd(n61WgF>{Gl=K 1kpWv=BSC,Zlfs o6_EI,$eA#ig,}5$OMP^M)g' );
define( 'SECURE_AUTH_SALT',  '^VFfWkB9ryrl;*<HzPxHC<5.]X{C047X}]LRg&QYRO+38H~$m;r}`!{#&q2-{=eE' );
define( 'LOGGED_IN_SALT',    'a!S+d4uGuPfeq6S)^YhMfgek|)7JDQJmvIg&oGJ=ld|tt>]rP>a7|YmP$,h|<M1.' );
define( 'NONCE_SALT',        '*a+*JT(hiZjIaa_Lyr,Bia4_)#OA6Kptc`cip+`e<{^pja1d0.H6`/e;7AD~o=@/' );
define( 'WP_CACHE_KEY_SALT', 'e~(ZXb6/T]rkn>xqy?Aa G7CNONj%MPjuTZ6:9bH$L/HVS1GV?3H6n0Xb tYUJMN' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>