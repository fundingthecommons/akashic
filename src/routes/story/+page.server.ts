import { fail } from '@sveltejs/kit';
import { writeFile } from 'fs/promises';

export const actions = {
	default: async ({ request }) => {
		const formData = Object.fromEntries(await request.formData());
		console.log('🚀 ~ default: ~ formData:', formData);

		if (!(formData.files as File)?.name) {
			return fail(400, {
				error: true,
				message: 'You must provide a file to upload'
			});
		}

		const { files } = formData as { files: File };
		await writeFile(`static/${files.name}`, Buffer.from(await files.arrayBuffer()));
		console.log('🚀 ~ default: ~ files:', files);
	}
};
