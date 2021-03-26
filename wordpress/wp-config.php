<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordPress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ':dB&nB-CpN~dUtYm2MeA 1vfaD[?8uF?MXgG0m:_@h$0}!p[.>#<BY^s:AR,|RV/' );
define( 'SECURE_AUTH_KEY',  'T~jJ*!2?7b!^Rk/{@h+E)A+!f!e/k2l2B<v=f%Vv_`&>I)sv.uDRE2@umS:;K>}~' );
define( 'LOGGED_IN_KEY',    ',~y{Hh.+LtiHKt)yP-[I9opzwvs@*cL$)5^rXL9*4ZKm23-B%|YoXqk;xo]y8w2G' );
define( 'NONCE_KEY',        'JbhExzAypK8UN^%vwEPeP/P!+m<dhZyvatQTfi/kJ5+KmSr#SWJH#zsq(x+8p=H]' );
define( 'AUTH_SALT',        'BNUJ]|S(Vfyg x]aP7fjLq:t;5O!V6;rRVPAIueI/B._fOrI1wW57=1.Lx.n`d3k' );
define( 'SECURE_AUTH_SALT', 'dNHQjGR9bMyz4a64#Gck-,P,o~|]glc5NaJV<o/kd;?I`2<YI_qDuzPaeQPv,)`u' );
define( 'LOGGED_IN_SALT',   ',TNhN%7;3$Z]Eg$VpJ-VM&5e8Ny]t{(2vaMHoH0v%|a@6}oF7>(%Lkuzh6b8wMG6' );
define( 'NONCE_SALT',       ',l0Nb(`[D04$Zz7vlpL33YLzz%@/gAM<FD{p5m@o c3K6j+YHz,g%vgXudw=~C3|' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
