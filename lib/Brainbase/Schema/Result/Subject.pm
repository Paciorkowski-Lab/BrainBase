use utf8;
package Brainbase::Schema::Result::Subject;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Brainbase::Schema::Result::Subject

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=item * L<DBIx::Class::PassphraseColumn>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp", "PassphraseColumn");

=head1 TABLE: C<subject>

=cut

__PACKAGE__->table("subject");

=head1 ACCESSORS

=head2 id

  data_type: 'varchar'
  is_nullable: 0
  size: 11

=head2 gender

  data_type: 'text'
  is_nullable: 1

=head2 race

  data_type: 'text'
  is_nullable: 1

=head2 ethnicity

  data_type: 'text'
  is_nullable: 1

=head2 descriptive_ethnicity

  data_type: 'text'
  is_nullable: 1

=head2 sample_number_1

  data_type: 'integer'
  is_nullable: 1

=head2 sample_tissue_1

  data_type: 'text'
  is_nullable: 1

=head2 sample_type_1

  data_type: 'text'
  is_nullable: 1

=head2 collection_date_1

  data_type: 'text'
  is_nullable: 1

=head2 extraction_technique_1

  data_type: 'text'
  is_nullable: 1

=head2 extraction_by_1

  data_type: 'text'
  is_nullable: 1

=head2 extraction_date_1

  data_type: 'text'
  is_nullable: 1

=head2 room_1

  data_type: 'text'
  is_nullable: 1

=head2 box_1

  data_type: 'integer'
  is_nullable: 1

=head2 row_1

  data_type: 'text'
  is_nullable: 1

=head2 col_1

  data_type: 'integer'
  is_nullable: 1

=head2 sample_comments_1

  data_type: 'text'
  is_nullable: 1

=head2 sample_number_2

  data_type: 'text'
  is_nullable: 1

=head2 sample_tissue_2

  data_type: 'text'
  is_nullable: 1

=head2 sample_type_2

  data_type: 'text'
  is_nullable: 1

=head2 collection_date_2

  data_type: 'text'
  is_nullable: 1

=head2 extraction_technique_2

  data_type: 'text'
  is_nullable: 1

=head2 extraction_by_2

  data_type: 'text'
  is_nullable: 1

=head2 extraction_date_2

  data_type: 'text'
  is_nullable: 1

=head2 room_2

  data_type: 'text'
  is_nullable: 1

=head2 box_2

  data_type: 'integer'
  is_nullable: 1

=head2 row_2

  data_type: 'text'
  is_nullable: 1

=head2 col_2

  data_type: 'integer'
  is_nullable: 1

=head2 sample_comments_2

  data_type: 'text'
  is_nullable: 1

=head2 sample_number_3

  data_type: 'text'
  is_nullable: 1

=head2 sample_tissue_3

  data_type: 'text'
  is_nullable: 1

=head2 sample_type_3

  data_type: 'text'
  is_nullable: 1

=head2 collection_date_3

  data_type: 'text'
  is_nullable: 1

=head2 extraction_technique_3

  data_type: 'text'
  is_nullable: 1

=head2 extraction_by_3

  data_type: 'text'
  is_nullable: 1

=head2 extraction_date_3

  data_type: 'text'
  is_nullable: 1

=head2 room_3

  data_type: 'text'
  is_nullable: 1

=head2 box_3

  data_type: 'integer'
  is_nullable: 1

=head2 row_3

  data_type: 'text'
  is_nullable: 1

=head2 col_3

  data_type: 'integer'
  is_nullable: 1

=head2 sample_comments_3

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_1

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_type_1

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_established_by_1

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_established_date_1

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_dewar_1

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_cane_1

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_box_1

  data_type: 'integer'
  is_nullable: 1

=head2 cell_line_row_1

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_col_1

  data_type: 'integer'
  is_nullable: 1

=head2 cell_line_comments_1

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_2

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_type_2

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_established_by_2

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_established_date_2

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_dewar_2

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_cane_2

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_box_2

  data_type: 'integer'
  is_nullable: 1

=head2 cell_line_row_2

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_col_2

  data_type: 'integer'
  is_nullable: 1

=head2 cell_line_comments_2

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_3

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_type_3

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_established_by_3

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_established_date_3

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_dewar_3

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_cane_3

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_box_3

  data_type: 'integer'
  is_nullable: 1

=head2 cell_line_row_3

  data_type: 'text'
  is_nullable: 1

=head2 cell_line_col_3

  data_type: 'integer'
  is_nullable: 1

=head2 cell_line_comments_3

  data_type: 'text'
  is_nullable: 1

=head2 diagnosis_1

  data_type: 'text'
  is_nullable: 1

=head2 diagnosis_2

  data_type: 'text'
  is_nullable: 1

=head2 diagnosis_3

  data_type: 'text'
  is_nullable: 1

=head2 diagnosis_4

  data_type: 'text'
  is_nullable: 1

=head2 diagnosis_5

  data_type: 'text'
  is_nullable: 1

=head2 affected

  data_type: 'text'
  is_nullable: 1

=head2 basic

  data_type: 'text'
  is_nullable: 1

=head2 dysmorphology

  data_type: 'text'
  is_nullable: 1

=head2 eeg

  data_type: 'text'
  is_nullable: 1

=head2 gdi

  data_type: 'text'
  is_nullable: 1

=head2 mri

  data_type: 'text'
  is_nullable: 1

=head2 mri_dx

  data_type: 'text'
  is_nullable: 1

=head2 photo

  data_type: 'text'
  is_nullable: 1

=head2 video

  data_type: 'text'
  is_nullable: 1

=head2 karyotype

  data_type: 'text'
  is_nullable: 1

=head2 cma

  data_type: 'text'
  is_nullable: 1

=head2 cma_dx

  data_type: 'text'
  is_nullable: 1

=head2 cma_platform

  data_type: 'text'
  is_nullable: 1

=head2 cma_where

  data_type: 'text'
  is_nullable: 1

=head2 cma_cnv_1_chr

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cma_cnv_1_start

  data_type: 'integer'
  is_nullable: 1

=head2 cma_cnv_1_end

  data_type: 'integer'
  is_nullable: 1

=head2 cma_cnv_1_inher

  data_type: 'text'
  is_nullable: 1

=head2 cma_cnv_2_chr

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cma_cnv_2_start

  data_type: 'integer'
  is_nullable: 1

=head2 cma_cnv_2_end

  data_type: 'integer'
  is_nullable: 1

=head2 cma_cnv_2_inher

  data_type: 'text'
  is_nullable: 1

=head2 cma_cnv_3_chr

  data_type: 'varchar'
  is_nullable: 1
  size: 3

=head2 cma_cnv_3_start

  data_type: 'integer'
  is_nullable: 1

=head2 cma_cnv_3_end

  data_type: 'integer'
  is_nullable: 1

=head2 cma_cnv_3_inher

  data_type: 'text'
  is_nullable: 1

=head2 gene_clinical

  data_type: 'text'
  is_nullable: 1

=head2 gene_research

  data_type: 'text'
  is_nullable: 1

=head2 tes_1

  data_type: 'text'
  is_nullable: 1

=head2 tes_1_sent

  data_type: 'text'
  is_nullable: 1

=head2 tes_1_fastq

  data_type: 'text'
  is_nullable: 1

=head2 tes_1_bam

  data_type: 'text'
  is_nullable: 1

=head2 tes_1_vcf

  data_type: 'text'
  is_nullable: 1

=head2 tes_1_vcf_sseq_indel

  data_type: 'text'
  is_nullable: 1

=head2 tes_1_vcf_sseq_snv

  data_type: 'text'
  is_nullable: 1

=head2 tes_1_final_results

  data_type: 'text'
  is_nullable: 1

=head2 tes_1_sanger_confirm

  data_type: 'text'
  is_nullable: 1

=head2 wes

  data_type: 'text'
  is_nullable: 1

=head2 wes_sent

  data_type: 'text'
  is_nullable: 1

=head2 wes_fastq

  data_type: 'text'
  is_nullable: 1

=head2 wes_bam

  data_type: 'text'
  is_nullable: 1

=head2 wes_vcf

  data_type: 'text'
  is_nullable: 1

=head2 wes_vcf_sseq_indel

  data_type: 'text'
  is_nullable: 1

=head2 wes_vcf_sseq_snv

  data_type: 'text'
  is_nullable: 1

=head2 wes_final_results

  data_type: 'text'
  is_nullable: 1

=head2 wes_sanger_confirm

  data_type: 'text'
  is_nullable: 1

=head2 wgs

  data_type: 'text'
  is_nullable: 1

=head2 gexpa

  data_type: 'text'
  is_nullable: 1

=head2 rnaseq

  data_type: 'text'
  is_nullable: 1

=head2 project_name_1

  data_type: 'text'
  is_nullable: 1

=head2 project_name_2

  data_type: 'text'
  is_nullable: 1

=head2 project_name_3

  data_type: 'text'
  is_nullable: 1

=head2 project_name_4

  data_type: 'text'
  is_nullable: 1

=head2 project_name_5

  data_type: 'text'
  is_nullable: 1

=head2 ts

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "varchar", is_nullable => 0, size => 11 },
  "gender",
  { data_type => "text", is_nullable => 1 },
  "race",
  { data_type => "text", is_nullable => 1 },
  "ethnicity",
  { data_type => "text", is_nullable => 1 },
  "descriptive_ethnicity",
  { data_type => "text", is_nullable => 1 },
  "sample_number_1",
  { data_type => "integer", is_nullable => 1 },
  "sample_tissue_1",
  { data_type => "text", is_nullable => 1 },
  "sample_type_1",
  { data_type => "text", is_nullable => 1 },
  "collection_date_1",
  { data_type => "text", is_nullable => 1 },
  "extraction_technique_1",
  { data_type => "text", is_nullable => 1 },
  "extraction_by_1",
  { data_type => "text", is_nullable => 1 },
  "extraction_date_1",
  { data_type => "text", is_nullable => 1 },
  "room_1",
  { data_type => "text", is_nullable => 1 },
  "box_1",
  { data_type => "integer", is_nullable => 1 },
  "row_1",
  { data_type => "text", is_nullable => 1 },
  "col_1",
  { data_type => "integer", is_nullable => 1 },
  "sample_comments_1",
  { data_type => "text", is_nullable => 1 },
  "sample_number_2",
  { data_type => "text", is_nullable => 1 },
  "sample_tissue_2",
  { data_type => "text", is_nullable => 1 },
  "sample_type_2",
  { data_type => "text", is_nullable => 1 },
  "collection_date_2",
  { data_type => "text", is_nullable => 1 },
  "extraction_technique_2",
  { data_type => "text", is_nullable => 1 },
  "extraction_by_2",
  { data_type => "text", is_nullable => 1 },
  "extraction_date_2",
  { data_type => "text", is_nullable => 1 },
  "room_2",
  { data_type => "text", is_nullable => 1 },
  "box_2",
  { data_type => "integer", is_nullable => 1 },
  "row_2",
  { data_type => "text", is_nullable => 1 },
  "col_2",
  { data_type => "integer", is_nullable => 1 },
  "sample_comments_2",
  { data_type => "text", is_nullable => 1 },
  "sample_number_3",
  { data_type => "text", is_nullable => 1 },
  "sample_tissue_3",
  { data_type => "text", is_nullable => 1 },
  "sample_type_3",
  { data_type => "text", is_nullable => 1 },
  "collection_date_3",
  { data_type => "text", is_nullable => 1 },
  "extraction_technique_3",
  { data_type => "text", is_nullable => 1 },
  "extraction_by_3",
  { data_type => "text", is_nullable => 1 },
  "extraction_date_3",
  { data_type => "text", is_nullable => 1 },
  "room_3",
  { data_type => "text", is_nullable => 1 },
  "box_3",
  { data_type => "integer", is_nullable => 1 },
  "row_3",
  { data_type => "text", is_nullable => 1 },
  "col_3",
  { data_type => "integer", is_nullable => 1 },
  "sample_comments_3",
  { data_type => "text", is_nullable => 1 },
  "cell_line_1",
  { data_type => "text", is_nullable => 1 },
  "cell_line_type_1",
  { data_type => "text", is_nullable => 1 },
  "cell_line_established_by_1",
  { data_type => "text", is_nullable => 1 },
  "cell_line_established_date_1",
  { data_type => "text", is_nullable => 1 },
  "cell_line_dewar_1",
  { data_type => "text", is_nullable => 1 },
  "cell_line_cane_1",
  { data_type => "text", is_nullable => 1 },
  "cell_line_box_1",
  { data_type => "integer", is_nullable => 1 },
  "cell_line_row_1",
  { data_type => "text", is_nullable => 1 },
  "cell_line_col_1",
  { data_type => "integer", is_nullable => 1 },
  "cell_line_comments_1",
  { data_type => "text", is_nullable => 1 },
  "cell_line_2",
  { data_type => "text", is_nullable => 1 },
  "cell_line_type_2",
  { data_type => "text", is_nullable => 1 },
  "cell_line_established_by_2",
  { data_type => "text", is_nullable => 1 },
  "cell_line_established_date_2",
  { data_type => "text", is_nullable => 1 },
  "cell_line_dewar_2",
  { data_type => "text", is_nullable => 1 },
  "cell_line_cane_2",
  { data_type => "text", is_nullable => 1 },
  "cell_line_box_2",
  { data_type => "integer", is_nullable => 1 },
  "cell_line_row_2",
  { data_type => "text", is_nullable => 1 },
  "cell_line_col_2",
  { data_type => "integer", is_nullable => 1 },
  "cell_line_comments_2",
  { data_type => "text", is_nullable => 1 },
  "cell_line_3",
  { data_type => "text", is_nullable => 1 },
  "cell_line_type_3",
  { data_type => "text", is_nullable => 1 },
  "cell_line_established_by_3",
  { data_type => "text", is_nullable => 1 },
  "cell_line_established_date_3",
  { data_type => "text", is_nullable => 1 },
  "cell_line_dewar_3",
  { data_type => "text", is_nullable => 1 },
  "cell_line_cane_3",
  { data_type => "text", is_nullable => 1 },
  "cell_line_box_3",
  { data_type => "integer", is_nullable => 1 },
  "cell_line_row_3",
  { data_type => "text", is_nullable => 1 },
  "cell_line_col_3",
  { data_type => "integer", is_nullable => 1 },
  "cell_line_comments_3",
  { data_type => "text", is_nullable => 1 },
  "diagnosis_1",
  { data_type => "text", is_nullable => 1 },
  "diagnosis_2",
  { data_type => "text", is_nullable => 1 },
  "diagnosis_3",
  { data_type => "text", is_nullable => 1 },
  "diagnosis_4",
  { data_type => "text", is_nullable => 1 },
  "diagnosis_5",
  { data_type => "text", is_nullable => 1 },
  "affected",
  { data_type => "text", is_nullable => 1 },
  "basic",
  { data_type => "text", is_nullable => 1 },
  "dysmorphology",
  { data_type => "text", is_nullable => 1 },
  "eeg",
  { data_type => "text", is_nullable => 1 },
  "gdi",
  { data_type => "text", is_nullable => 1 },
  "mri",
  { data_type => "text", is_nullable => 1 },
  "mri_dx",
  { data_type => "text", is_nullable => 1 },
  "photo",
  { data_type => "text", is_nullable => 1 },
  "video",
  { data_type => "text", is_nullable => 1 },
  "karyotype",
  { data_type => "text", is_nullable => 1 },
  "cma",
  { data_type => "text", is_nullable => 1 },
  "cma_dx",
  { data_type => "text", is_nullable => 1 },
  "cma_platform",
  { data_type => "text", is_nullable => 1 },
  "cma_where",
  { data_type => "text", is_nullable => 1 },
  "cma_cnv_1_chr",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cma_cnv_1_start",
  { data_type => "integer", is_nullable => 1 },
  "cma_cnv_1_end",
  { data_type => "integer", is_nullable => 1 },
  "cma_cnv_1_inher",
  { data_type => "text", is_nullable => 1 },
  "cma_cnv_2_chr",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cma_cnv_2_start",
  { data_type => "integer", is_nullable => 1 },
  "cma_cnv_2_end",
  { data_type => "integer", is_nullable => 1 },
  "cma_cnv_2_inher",
  { data_type => "text", is_nullable => 1 },
  "cma_cnv_3_chr",
  { data_type => "varchar", is_nullable => 1, size => 3 },
  "cma_cnv_3_start",
  { data_type => "integer", is_nullable => 1 },
  "cma_cnv_3_end",
  { data_type => "integer", is_nullable => 1 },
  "cma_cnv_3_inher",
  { data_type => "text", is_nullable => 1 },
  "gene_clinical",
  { data_type => "text", is_nullable => 1 },
  "gene_research",
  { data_type => "text", is_nullable => 1 },
  "tes_1",
  { data_type => "text", is_nullable => 1 },
  "tes_1_sent",
  { data_type => "text", is_nullable => 1 },
  "tes_1_fastq",
  { data_type => "text", is_nullable => 1 },
  "tes_1_bam",
  { data_type => "text", is_nullable => 1 },
  "tes_1_vcf",
  { data_type => "text", is_nullable => 1 },
  "tes_1_vcf_sseq_indel",
  { data_type => "text", is_nullable => 1 },
  "tes_1_vcf_sseq_snv",
  { data_type => "text", is_nullable => 1 },
  "tes_1_final_results",
  { data_type => "text", is_nullable => 1 },
  "tes_1_sanger_confirm",
  { data_type => "text", is_nullable => 1 },
  "wes",
  { data_type => "text", is_nullable => 1 },
  "wes_sent",
  { data_type => "text", is_nullable => 1 },
  "wes_fastq",
  { data_type => "text", is_nullable => 1 },
  "wes_bam",
  { data_type => "text", is_nullable => 1 },
  "wes_vcf",
  { data_type => "text", is_nullable => 1 },
  "wes_vcf_sseq_indel",
  { data_type => "text", is_nullable => 1 },
  "wes_vcf_sseq_snv",
  { data_type => "text", is_nullable => 1 },
  "wes_final_results",
  { data_type => "text", is_nullable => 1 },
  "wes_sanger_confirm",
  { data_type => "text", is_nullable => 1 },
  "wgs",
  { data_type => "text", is_nullable => 1 },
  "gexpa",
  { data_type => "text", is_nullable => 1 },
  "rnaseq",
  { data_type => "text", is_nullable => 1 },
  "project_name_1",
  { data_type => "text", is_nullable => 1 },
  "project_name_2",
  { data_type => "text", is_nullable => 1 },
  "project_name_3",
  { data_type => "text", is_nullable => 1 },
  "project_name_4",
  { data_type => "text", is_nullable => 1 },
  "project_name_5",
  { data_type => "text", is_nullable => 1 },
  "ts",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07033 @ 2013-01-08 15:42:31
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:QK0XMJRxbv1k35dYA3iJTw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
