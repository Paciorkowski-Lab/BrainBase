package Brainbase::Form::Subject;

use HTML::FormHandler::Moose;
extends 'HTML::FormHandler::Model::DBIC';
use namespace::autoclean;

sub build_render_list { ['id', 'demographics', 'lab_1', 'lab_2', 'lab_3', 'cells_1', 'cells_2', 'cells_3', 'phenotype', 'karyo_cma', 'cnv1', 'cnv2', 'cnv3', 'seq', 'tes','whole_exome', 'rna', 'projects', 'submit' ] }

has '+item_class' => ( default => 'Subject' );
has_field 'id' => ( 
	tags => { wrapper_tag => 'div id="boxredline"', 
		after_element => qq{<b> All subjects must have an ID number.</b><br /><br />},
		label_after => ': ' } );
has_field 'gender' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'male', label => 'male'},
		{ value => 'female', label => 'female'} ] );
has_field 'race' => ( type => 'Select', widget => 'select',
	tags => { after_element => qq{<small> Race and ethnicity are NIH specific terms here.</small><br />} },
	options => [ { value => '', label => ''},
		{ value => 'American Indian or Alaskan native', label => 'American Indian / Alaskan native'},
		{ value => 'Asian', label => 'Asian'},
		{ value => 'Native Hawaiian or Other Pacific Islander ', label => 'Native Hawaiian / Other Pacific Islander'},
		{ value => 'Black or African American', label => 'Black / African-American'},
		{ value => 'White', label => 'White'} ] );
has_field 'ethnicity' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Hispanic', label => 'Hispanic/Latino'},
		{ value => 'Nonhispanic', label => 'Non Hispanic/Latino'} ] );
has_field 'descriptive_ethnicity' => (
	tags => { after_element => qq{<small> This is for more useful ethnic definitions.</small></br />} } );
has_block 'id' => (
	label => '<div id="boxredline"><h3<Subject ID</h3',
	render_list => [ 'id', 'submit' ] );
has_block 'demographics' => ( 
	label => '<div id="boxblue"><h3>Demographics</h3>',
	render_list => [ 'gender', 'race', 'ethnicity', 'descriptive_ethnicity' ] );
has_block 'lab_1' => (
	label => '<div id="boxpeach"><h3>Lab - Sample 1</h3>',
	render_list => [ 'sample_number_1', 'sample_tissue_1', 'sample_type_1', 'collection_date_1', 'extraction_technique_1', 'extraction_by_1', 'extraction_date_1', 'room_1', 'box_1', 'row_1', 'col_1', 'sample_comments_1' ] );
has_block 'lab_2' => (
	label => '<div id="boxpeach"><h3>Lab - Sample 2</h3>',
	render_list => [ 'sample_number_2', 'sample_tissue_2', 'sample_type_2', 'collection_date_2', 'extraction_technique_2', 'extraction_by_2', 'extraction_date_2', 'room_2', 'box_2', 'row_2', 'col_2', 'sample_comments_2' ] );
has_block 'lab_3' => (
	label => '<div id="boxpeach"><h3>Lab - Sample 3</h3>',
	render_list => [ 'sample_number_3', 'sample_tissue_3', 'sample_type_3', 'collection_date_3', 'extraction_technique_3', 'extraction_by_3', 'extraction_date_3', 'room_3', 'box_3', 'row_3', 'col_3', 'sample_comments_3' ] );
has_block 'cells_1' => (
	label => '<div id="boxyellow"><h3>Lab - Cell Line 1</h3>',
	render_list => [ 'cell_line_1', 'cell_line_type_1', 'cell_line_established_by_1', 'cell_line_established_date_1', 'cell_line_dewar_1', 'cell_line_cane_1', 'cell_line_box_1', 'cell_line_row_1', 'cell_line_col_1', 'cell_line_comments_1' ] );
has_block 'cells_2' => (
	label => '<div id="boxyellow"><h3>Lab - Cell Line 2</h3>',
	render_list => [ 'cell_line_2', 'cell_line_type_2', 'cell_line_established_by_2', 'cell_line_established_date_2', 'cell_line_dewar_2', 'cell_line_cane_2', 'cell_line_box_2', 'cell_line_row_2', 'cell_line_col_2', 'cell_line_comments_2' ] );
has_block 'cells_3' => (
	label => '<div id="boxyellow"><h3>Lab - Cell Line 3 </h3>',
	render_list => [ 'cell_line_3', 'cell_line_type_3', 'cell_line_established_by_3', 'cell_line_established_date_3', 'cell_line_dewar_3', 'cell_line_cane_3', 'cell_line_box_3', 'cell_line_row_3', 'cell_line_col_3', 'cell_line_comments_3' ] );
has_block 'phenotype' => (
	label => '<div id ="boxpurple"><h3>Phenotype</h3>',
	render_list => [ 'diagnosis_1', 'diagnosis_2', 'diagnosis_3', 'diagnosis_4', 'diagnosis_5', 'affected', 'basic', 'dysmorphology', 'eeg', 'gdi', 'mri', 'mri_dx', 'photo', 'video' ] );
has_block 'karyo_cma' => (
	label => '<div id="boxgreen"><h3>Genotype - Karyotype & Copy Number</h3>',
	render_list => [ 'karyotype', 'cma', 'cma_dx', 'cma_platform', 'cma_where' ] );
has_block 'cnv1' => (
	label => '<div id="boxgreen"><h3>Genotype - CNV 1</h3>',
	render_list => [ 'cma_cnv_1_chr', 'cma_cnv_1_start', 'cma_cnv_1_end', 'cma_cnv_1_inher' ] );
has_block 'cnv2' => (
	label => '<div id="boxgreen"><h3>Genotype - CNV 2</h3>',
	render_list => [ 'cma_cnv_2_chr', 'cma_cnv_2_start', 'cma_cnv_2_end', 'cma_cnv_2_inher' ] );
has_block 'cnv3' => (
	label => '<div id="boxgreen"><h3>Genotype - CNV 3</h3>',
	render_list => [ 'cma_cnv_3_chr', 'cma_cnv_3_start', 'cma_cnv_3_end', 'cma_cnv_3_inher' ] );
has_block 'seq' => (
	label => '<div id="boxgreen"><h3>Genotype - Sanger Sequencing</h3>',
	render_list => [ 'gene_clinical', 'gene_research' ] );
has_block 'tes' => (
	label => '<div id="boxgreen"><h3>Genotype - Targeted Exon NGS</h3>',
	render_list => [ 'tes_1', 'tes_1_sent', 'tes_1_fastq', 'tes_1_bam', 'tes_1_vcf', 'tes_1_vcf_sseq_indel', 'tes_1_vcf_sseq_snv', 'tes_1_final_results', 'tes_1_sanger_confirm' ] );
has_block 'whole_exome' => (
	label => '<div id="boxgreen"><h3>Genotype - Whole Exome & Whole Genome Sequencing</h3>',
	render_list => [ 'wes', 'wes_sent', 'wes_fastq', 'wes_bam', 'wes_vcf', 'wes_vcf_sseq_indel', 'wes_vcf_sseq_snv', 'wes_final_results', 'wes_sanger_confirm', 'wgs' ] );
has_block 'rna' => (
	label => '<div id="boxgreen"><h3>Genotype - RNA Studies</h3>',
	render_list => [ 'gexpa', 'rnaseq' ] );
has_block 'projects' => (
	label => '<div id="boxred"><h3>Projects</h3>',
	render_list => [ 'project_name_1', 'project_name_2', 'project_name_3', 'project_name_4', 'project_name_5' ] );
has_field 'sample_number_1';
has_field 'sample_tissue_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'blood', label => 'blood'},
		{ value => 'brain', label => 'brain'},
		{ value => 'saliva', label => 'saliva'},
		{ value => 'skin', label => 'skin'} ] );
has_field 'sample_type_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'DNA', label => 'DNA'},
		{ value => 'RNA', label => 'RNA'} ] );
has_field 'collection_date_1';
has_field 'extraction_technique_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Gentra PureGene', label => 'Gentra PureGene'},
		{ value => 'RNAeasy', label => 'RNAeasy'} ] );
has_field 'extraction_by_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'},
		{ value => 'Default2', label => 'Default2'} ] );
has_field 'extraction_date_1';
has_field 'room_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Cold Room', label => 'Cold Room'} ] );
has_field 'box_1';
has_field 'row_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'A', label => 'A'},
		{ value => 'B', label => 'B'},
		{ value => 'C', label => 'C'},
		{ value => 'D', label => 'D'},
		{ value => 'E', label => 'E'},
		{ value => 'F', label => 'F'},
		{ value => 'G', label => 'G'},
		{ value => 'H', label => 'H'},
		{ value => 'I', label => 'I'} ] );
has_field 'col_1' => ( type => 'IntRange', widget => 'select',
	range_start => 1, range_end => 9 );
has_field 'sample_comments_1';
has_field 'sample_number_2';
has_field 'sample_tissue_2' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'blood', label => 'blood'},
		{ value => 'brain', label => 'brain'},
		{ value => 'saliva', label => 'saliva'},
		{ value => 'skin', label => 'skin'} ] );
has_field 'sample_type_2' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'DNA', label => 'DNA'},
		{ value => 'RNA', label => 'RNA'} ] );
has_field 'collection_date_2';
has_field 'extraction_technique_2' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Gentra PureGene', label => 'Gentra PureGene'},
		{ value => 'RNAeasy', label => 'RNAeasy'} ] );
has_field 'extraction_by_2' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'},
		{ value => 'Default2', label => 'Default2'} ] );
has_field 'extraction_date_2';
has_field 'room_2' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Cold Room', label => 'Cold Room'} ] );
has_field 'box_2';
has_field 'row_2' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'A', label => 'A'},
		{ value => 'B', label => 'B'},
		{ value => 'C', label => 'C'},
		{ value => 'D', label => 'D'},
		{ value => 'E', label => 'E'},
		{ value => 'F', label => 'F'},
		{ value => 'G', label => 'G'},
		{ value => 'H', label => 'H'},
		{ value => 'I', label => 'I'} ] );
has_field 'col_2' => ( type => 'IntRange', widget => 'select',
	range_start => 1, range_end => 9 );
has_field 'sample_comments_2';
has_field 'sample_number_3';
has_field 'sample_tissue_3' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'blood', label => 'blood'},
		{ value => 'brain', label => 'brain'},
		{ value => 'saliva', label => 'saliva'},
		{ value => 'skin', label => 'skin'} ] );
has_field 'sample_type_3' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'DNA', label => 'DNA'},
		{ value => 'RNA', label => 'RNA'} ] );
has_field 'collection_date_3';
has_field 'extraction_technique_3' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Gentra PureGene', label => 'Gentra PureGene'},
		{ value => 'RNAeasy', label => 'RNAeasy'} ] );
has_field 'extraction_by_3' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'},
		{ value => 'Default2', label => 'Default2'} ] );
has_field 'extraction_date_3';
has_field 'room_3' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Cold Room', label => 'Cold Room'} ] );
has_field 'box_3';
has_field 'row_3' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'A', label => 'A'},
		{ value => 'B', label => 'B'},
		{ value => 'C', label => 'C'},
		{ value => 'D', label => 'D'},
		{ value => 'E', label => 'E'},
		{ value => 'F', label => 'F'},
		{ value => 'G', label => 'G'},
		{ value => 'H', label => 'H'},
		{ value => 'I', label => 'I'} ] );
has_field 'col_3' => ( type => 'IntRange', widget => 'select',
	range_start => 1, range_end => 9 );
has_field 'sample_comments_3';
has_field 'cell_line_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Available', label => 'Available'},
		{ value => 'Pending', label => 'Pending' },
		{ value => 'Planned', label => 'Planned' } ] );
has_field 'cell_line_type_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Fibroblast', label => 'Fibroblast'},
		{ value => 'Keratinocyte', label => 'Keratinocyte'},
		{ value => 'Lymphoblast', label => 'Lymphoblast'},
		{ value => 'Stem Cell', label => 'Stem Cell'} ] );
has_field 'cell_line_established_by_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'} ] );
has_field 'cell_line_established_date_1';
has_field 'cell_line_dewar_1';
has_field 'cell_line_cane_1';
has_field 'cell_line_box_1';
has_field 'cell_line_row_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'A', label => 'A'},
		{ value => 'B', label => 'B'},
		{ value => 'C', label => 'C'},
		{ value => 'D', label => 'D'},
		{ value => 'E', label => 'E'},
		{ value => 'F', label => 'F'},
		{ value => 'G', label => 'G'},
		{ value => 'H', label => 'H'},
		{ value => 'I', label => 'I'} ] );
has_field 'cell_line_col_1' => ( type => 'IntRange', widget => 'select',
	range_start => 1, range_end => 9 );
has_field 'cell_line_comments_1';
has_field 'cell_line_2' => (type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Available', label => 'Available'},
		{ value => 'Pending', label => 'Pending'},
		{ value => 'Planned', label => 'Planned'} ] );
has_field 'cell_line_type_2' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Fibroblast', label => 'Fibroblast'},
		{ value => 'Keratinocyte', label => 'Keratinocyte'},
		{ value => 'Lymphoblast', label => 'Lymphoblast'},
		{ value => 'Stem Cell', label => 'Stem Cell'} ] );
has_field 'cell_line_established_by_2' => ( type => 'Select', widget => 'select', 
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'} ] );
has_field 'cell_line_established_date_2';
has_field 'cell_line_dewar_2';
has_field 'cell_line_cane_2';
has_field 'cell_line_box_2';
has_field 'cell_line_row_2' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'A', label => 'A'},
		{ value => 'B', label => 'B'},
		{ value => 'C', label => 'C'},
		{ value => 'D', label => 'D'},
		{ value => 'E', label => 'E'},
		{ value => 'F', label => 'F'},
		{ value => 'G', label => 'G'},
		{ value => 'H', label => 'H'},
		{ value => 'I', label => 'I'} ] );
has_field 'cell_line_col_2' => ( type => 'IntRange', widget => 'select',
	range_start => 1, range_end => 9 );
has_field 'cell_line_comments_2';
has_field 'cell_line_3' => (type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Available', label => 'Available'},
		{ value => 'Pending', label => 'Pending'},
		{ value => 'Planned', label => 'Planned'} ] );
has_field 'cell_line_type_3' => (type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Fibroblast', label => 'Fibroblast'},
		{ value => 'Keratinocypte', label => 'Keratinocyte'},
		{ value => 'Lymphoblast', label => 'Lymphoblast'},
		{ value => 'Stem Cell', label => 'Stem Cell'} ] );
has_field 'cell_line_established_by_3' => (type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'} ] );
has_field 'cell_line_established_date_3';
has_field 'cell_line_dewar_3';
has_field 'cell_line_cane_3';
has_field 'cell_line_box_3';
has_field 'cell_line_row_3' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'A', label => 'A'},
		{ value => 'B', label => 'B'},
		{ value => 'C', label => 'C'},
		{ value => 'D', label => 'D'},
		{ value => 'E', label => 'E'},
		{ value => 'F', label => 'F'},
		{ value => 'G', label => 'G'},
		{ value => 'H', label => 'H'},
		{ value => 'I', label => 'I'} ] );
has_field 'cell_line_col_3' => ( type => 'IntRange', widget => 'select',
	range_start => 1, range_end => 9 );
has_field 'cell_line_comments_3';
has_field 'diagnosis_1';
has_field 'diagnosis_2';
has_field 'diagnosis_3';
has_field 'diagnosis_4';
has_field 'diagnosis_5';
has_field 'affected' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Yes', label => 'Yes'},
		{ value => 'No', label => 'No'} ] );
has_field 'basic' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Collected', label => 'Collected'},
		{ value => 'Not Collected', label => 'Not Collected'} ] );
has_field 'dysmorphology' => ( type => 'Select', widget => 'select',
        options => [ { value => '', label => ''},
		{ value => 'Collected', label => 'Collected'},
		{ value => 'Not Collected', label => 'Not Collected'} ] );
has_field 'eeg' => ( type => 'Select', widget => 'select',
        options => [ { value => '', label => ''},
		{ value => 'Collected', label => 'Collected'},
		{ value => 'Not Collected', label => 'Not Collected'} ] );
has_field 'gdi' => ( type => 'Select', widget => 'select',
        options => [ { value => '', label => ''},
		{ value => 'Collected', label => 'Collected'},
		{ value => 'Not Collected', label => 'Not Collected'} ] );
has_field 'mri' => ( type => 'Select', widget => 'select',
        options => [ { value => '', label => ''},
		{ value => 'Collected', label => 'Collected'},
		{ value => 'Not Collected', label => 'Not Collected'} ] );
has_field 'mri_dx';
has_field 'photo' => ( type => 'Select', widget => 'select',
        options => [ { value => '', label => ''},
		{ value => 'Collected', label => 'Collected'},
		{ value => 'Not Collected', label => 'Not Collected'} ] );
has_field 'video' => ( type => 'Select', widget => 'select',
        options => [ { value => '', label => ''},
		{ value => 'Collected', label => 'Collected'},
		{ value => 'Not Collected', label => 'Not Collected'} ] );
has_field 'karyotype';
has_field 'cma' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Available', label => 'Available'},
		{ value => 'Pending', label => 'Pending'},
       		{ value => 'Planned', label => 'Planned'} ] );
has_field 'cma_dx';
has_field 'cma_platform';
has_field 'cma_where';
has_field 'cma_cnv_1_chr' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => '1', label => '1'},
		{ value => '2', label => '2'},
		{ value => '3', label => '3'}, 
		{ value => '4', label => '4'}, 
		{ value => '5', label => '5'}, 
		{ value => '6', label => '6'}, 
		{ value => '7', label => '7'}, 
		{ value => '8', label => '8'}, 
		{ value => '9', label => '9'}, 
		{ value => '10', label => '10'}, 
		{ value => '11', label => '11'}, 
		{ value => '12', label => '12'}, 
		{ value => '13', label => '13'}, 
		{ value => '14', label => '14'}, 
		{ value => '15', label => '15'}, 
		{ value => '16', label => '16'}, 
		{ value => '17', label => '17'}, 
		{ value => '18', label => '18'}, 
		{ value => '19', label => '19'}, 
		{ value => '20', label => '20'}, 
		{ value => '21', label => '21'}, 
		{ value => '22', label => '22'}, 
		{ value => 'X', label => 'X'}, 
		{ value => 'Y', label => 'Y'}, 	] );
has_field 'cma_cnv_1_start';
has_field 'cma_cnv_1_end';
has_field 'cma_cnv_1_inher' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'unknown', label => 'unknown'},
		{ value => 'de novo', label => 'de novo'},
		{ value => 'maternal', label => 'maternal'},
		{ value => 'paternal', label => 'paternal'} ] );
has_field 'cma_cnv_2_chr' => ( type => 'Select', widget => 'select',
	 options => [ { value => '', label => ''},
		{ value => '1', label => '1'},
		{ value => '2', label => '2'},
		{ value => '3', label => '3'},
		{ value => '4', label => '4'},
		{ value => '5', label => '5'},
		{ value => '6', label => '6'},
		{ value => '7', label => '7'},
		{ value => '8', label => '8'},
		{ value => '9', label => '9'},
		{ value => '10', label => '10'},
		{ value => '11', label => '11'},
		{ value => '12', label => '12'},
		{ value => '13', label => '13'},
		{ value => '14', label => '14'},
		{ value => '15', label => '15'},
		{ value => '16', label => '16'},
		{ value => '17', label => '17'},
		{ value => '18', label => '18'},
		{ value => '19', label => '19'},
		{ value => '20', label => '20'},
		{ value => '21', label => '21'},
		{ value => '22', label => '22'},
		{ value => 'X', label => 'X'},
		{ value => 'Y', label => 'Y'},  ] );    
has_field 'cma_cnv_2_start';
has_field 'cma_cnv_2_end';
has_field 'cma_cnv_2_inher' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'unknown', label => 'unknown'},
		{ value => 'de novo', label => 'de novo'},
		{ value => 'maternal', label => 'maternal'},
		{ value => 'paternal', label => 'paternal'} ] );
has_field 'cma_cnv_3_chr' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => '1', label => '1'},
		{ value => '2', label => '2'},                 
		{ value => '3', label => '3'},
		{ value => '4', label => '4'},
		{ value => '5', label => '5'},
		{ value => '6', label => '6'},
		{ value => '7', label => '7'},
		{ value => '8', label => '8'},
		{ value => '9', label => '9'}, 
		{ value => '10', label => '10'},
		{ value => '11', label => '11'},
		{ value => '12', label => '12'},
		{ value => '13', label => '13'},
		{ value => '14', label => '14'},
		{ value => '15', label => '15'},
		{ value => '16', label => '16'},
		{ value => '17', label => '17'},
		{ value => '18', label => '18'},
		{ value => '19', label => '19'},
		{ value => '20', label => '20'},
		{ value => '21', label => '21'},
		{ value => '22', label => '22'},
		{ value => 'X', label => 'X'},
		{ value => 'Y', label => 'Y'},  ] );    
has_field 'cma_cnv_3_start';
has_field 'cma_cnv_3_end';
has_field 'cma_cnv_3_inher' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''}, 
		{ value => 'unknown', label => 'unknown'},
		{ value => 'de novo', label => 'de novo'},
		{ value => 'maternal', label => 'maternal'},
		{ value => 'paternal', label => 'paternal'} ] );
has_field 'gene_clinical';
has_field 'gene_research';
has_field 'tes_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Available', label => 'Available'},
		{ value => 'Pending', label => 'Pending'},
		{ value => 'Planned', label => 'Planned'} ] );
has_field 'tes_1_sent' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'tes_1_fastq' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'tes_1_bam' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'tes_1_vcf' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'tes_1_vcf_sseq_indel' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'tes_1_vcf_sseq_snv' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'tes_1_final_results';
has_field 'tes_1_sanger_confirm' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'wes' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Available', label => 'Available'},
		{ value => 'Pending', label => 'Pending'},
		{ value => 'Planned', label => 'Planned'} ] );
has_field 'wes_sent' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'wes_fastq' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'wes_bam' => ( type => 'Select', widget => 'select',
	 options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'wes_vcf' => ( type => 'Select', widget => 'select',
	 options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'wes_vcf_sseq_indel' => ( type => 'Select', widget => 'select',
	 options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'wes_vcf_sseq_snv' => ( type => 'Select', widget => 'select',
	 options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'wes_final_results';
has_field 'wes_sanger_confirm' => ( type => 'Select', widget => 'select',
	 options => [ { value => '', label => ''},
		{ value => 'Done', label => 'Done'} ] );
has_field 'wgs' => ( type => 'Select', widget => 'select',
	 options => [ { value => '', label => ''},
		{ value => 'Available', label => 'Available'},
		{ value => 'Pending', label => 'Pending'},
		{ value => 'Planned', label => 'Planned'} ] );
has_field 'gexpa' => ( type => 'Select', widget => 'select',
	 options => [ { value => '', label => ''},
		{ value => 'Available', label => 'Available'},
		{ value => 'Pending', label => 'Pending'},
		{ value => 'Planned', label => 'Planned'} ] );
has_field 'rnaseq' => ( type => 'Select', widget => 'select',
	 options => [ { value => '', label => ''},
		{ value => 'Available', label => 'Available'},
		{ value => 'Pending', label => 'Pending'},
		{ value => 'Planned', label => 'Planned'} ] );
has_field 'project_name_1' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'}, 
 		{ value => 'Default2', label => 'Default2'} ] );
has_field 'project_name_2' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'}, 
 		{ value => 'Default2', label => 'Default2'} ] );
has_field 'project_name_3' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'}, 
 		{ value => 'Default2', label => 'Default2'} ] );
has_field 'project_name_4' => ( type => 'Select', widget => 'select',
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'}, 
 		{ value => 'Default2', label => 'Default2'} ] );
has_field 'project_name_5'  => ( type => 'Select', widget => 'select',        
	options => [ { value => '', label => ''},
		{ value => 'Default1', label => 'Default1'}, 
 		{ value => 'Default2', label => 'Default2'} ] );
has_field 'submit' => (type => 'Submit', value => 'Submit' );
__PACKAGE__->meta->make_immutable;
1;
