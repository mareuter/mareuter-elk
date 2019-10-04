require 'spec_helper_acceptance'

describe 'elk class' do
  context 'default parameters' do
    let(:manifest) do
      "class {'elk':}"
    end

    it 'run without errors' do
      result = apply_manifest(manifest, catch_failures: true)
      expect(result.exit_code).to eq 2
    end
  end
end
