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
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// define('WP_REDIS_PATH', __DIR__ . '/../redis.sock');
// define('WP_REDIS_SCHEME', 'unix');
// define('WP_CACHE_KEY_SALT', 'mkorchi.com');
// define( 'WP_REDIS_PASSWORD', 'password' );


define('WP_CACHE', true);
define( 'WP_REDIS_HOST', 'redis' );
define( 'WP_REDIS_PORT', '6379' );



// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mkorchi_db' );

/** Database username */
define( 'DB_USER', 'mkorchi' );

/** Database password */
define( 'DB_PASSWORD', 'masakado1' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'WP_ALLOW_REPAIR', true );

// define('WP_HOME', 'http://korchi.42.fr');
// define('WP_SITEURL', 'http://korchi.42.fr/wp');


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
define( 'AUTH_KEY', 'uL-][lV7E~fIv3VX$u}-|;1:CR<xD@eZP7AGuR/$c^=EuVnE!o=LqX3m1,8jKd)y' );
define( 'SECURE_AUTH_KEY', '5(^K88av%5f,1B-2^#4>4hru4|PTeiF{Kw+Y8S-MzdMBGxKv)x9W,D%8i#)d' );
define( 'LOGGED_IN_KEY', 'F)OeaQJO)cDby9R_&j|/4n;+6>,-zMiv#^l=gS*-NfzU_?hXKv{8W]p^HktG' );
define( 'NONCE_KEY', 'JKz1sL_<x2o[KMnJ*W;z:V_:H0e{QI!0f[|Rl7i|m}h#C=Gbqy3,u(UpavEY5d.T' );
define( 'AUTH_SALT', 'ztM5r5a<U|kO=ju5I05th;D(k@<eG1{itL-8A+P}5r5<Kl$:^9Iv.VF+2Q?;A1nF' );
define( 'SECURE_AUTH_SALT', 'AKG@oE~,V3RVe}g+$dG+|~=-L,uq3aFHz%|T07+e$|0Q?9lSd7f^j+ZuVlx*]4t' );
define( 'LOGGED_IN_SALT', 'rH&G0@8WJ9XeY5;6lI2-S+qN3w|LkmvD{XBjMxOe%d,!^Z/}RzoU:Upa$cfNT1' );
define( 'NONCE_SALT', 'rM57n>x=xFY.9^:PMJ(<ohQ;W#qDPvB03j%/I*vPc=Tth+I,S.GvZ-c:1sb@6u' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';