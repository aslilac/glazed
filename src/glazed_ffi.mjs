const evaluated = new Map();

export function unwrap(lazy) {
	const { init } = lazy;

	if (evaluated.has(init)) {
		return evaluated.get(init);
	}

	const result = init();
	evaluated.set(init, result);
	return result;
}
