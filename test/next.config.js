/** @type {import('next').NextConfig} */
const nextConfig = {
	reactStrictMode: true,
	// set basePath to BASE_PATH env variable
	basePath: process.env.DEV ? '/test/out' : '/~nd37549/test',
};

module.exports = nextConfig;
