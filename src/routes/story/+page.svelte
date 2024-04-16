<script lang="ts">
	import { enhance } from '$app/forms';
	import { FileButton, FileDropzone, ProgressBar } from '@skeletonlabs/skeleton';
</script>

<div class="max-w-2xl mx-auto mt-10 block card p-4">
	<form class="space-y-6" action="#" method="POST" use:enhance enctype="multipart/form-data">
		<div>
			<h1 class="h1">Tell Your Story</h1>
			<label class="label my-5">
				<span>This story is called:</span>
				<input class="input" type="text" placeholder="Input" />
			</label>

			<!-- <FileButton name="files" /> -->
			<FileDropzone class="my-5" name="files" />
			<!-- <ProgressBar class="my-5" value={100} max={100} /> -->
			<button type="submit" class="btn variant-filled-secondary">Submit Your Story</button>
		</div>
	</form>
</div>
