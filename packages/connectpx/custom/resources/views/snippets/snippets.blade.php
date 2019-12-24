@foreach(config('laravelbuilder.sinippets.default', []) as $snippet)
	@includeIf('laravelbuilder::snippets.default.' . $snippet)
@endforeach

@foreach(config('laravelbuilder.sinippets.extra', []) as $snippet)
	@includeIf( $snippet )
@endforeach