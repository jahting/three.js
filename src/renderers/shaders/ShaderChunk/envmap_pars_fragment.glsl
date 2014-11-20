#ifdef USE_ENVMAP

	uniform float reflectivity;
	#ifdef ENVMAP_TYPE_CUBE
		uniform samplerCube envMap;
	#else
		uniform sampler2D envMap;
	#endif
	uniform float flipEnvMap;
	uniform int combine;

	#if defined( USE_BUMPMAP ) || defined( USE_NORMALMAP ) || defined( PHONG )

		uniform bool useRefract;
		uniform float refractionRatio;

	#else

		varying vec3 vReflect;

	#endif

#endif