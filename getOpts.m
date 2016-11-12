function [opt] = getOpts(expt_name)
	
	switch expt_name
		case 'all_variations'
			opt = getDefaultOpts();
			
			opt.which_algs_paths = {'L1cGAN'};--{'L1','GAN','cGAN','L1GAN','L1cGAN','0layers','1layers','6layers','encoderdecoderL1','encoderdecoderL1cGAN'};
			opt.Nimgs = 100;
			opt.ut_id = 'asdf';
			opt.base_url = 'https://people.eecs.berkeley.edu/~isola/pix2pix/turk/cityscapes/all_variations/';
			opt.instructions_file = './instructions_basic.html';
			opt.short_instructions_file = './short_instructions_basic.html';
			opt.consent_file = './consent_basic.html';
			opt.use_vigilance = false;
			
		otherwise
			error(sprintf('no opts defined for experiment %s',expt_name));
	end
	
	opt.expt_name = expt_name;
end