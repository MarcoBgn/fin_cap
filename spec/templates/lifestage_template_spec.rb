RSpec.describe LifestageTemplate do
  subject { described_class.new(article) }
  let(:article) do
    double('Mas::Cms::Article', attributes)
  end

  describe '.steering_group_title_block' do
    context 'when block is present' do
      let(:attributes) do
        {
          non_content_blocks: [
            Mas::Cms::Block.new(
              identifier: 'steering_group_title',
              content: 'Steering Groups'
            )
          ]
        }
      end

      it 'returns steering_group_title block' do
        expect(subject.steering_group_title_block).to eq(
          Mas::Cms::Block.new(
            identifier: 'steering_group_title',
            content: 'Steering Groups'
          )
        )
      end
    end

    context 'when block is not present' do
      let(:attributes) do
        { non_content_blocks: [] }
      end

      it 'returns nil' do
        expect(subject.steering_group_title_block).to be_nil
      end
    end
  end

  describe '.steering_group_links_block' do
    context 'when block is present' do
      let(:attributes) do
        {
          non_content_blocks: [
            Mas::Cms::Block.new(
              identifier: 'steering_group_links',
              content: 'bunch of links'
            )
          ]
        }
      end

      it 'returns steering_group_links block' do
        expect(subject.steering_group_links_block).to eq(
          Mas::Cms::Block.new(
            identifier: 'steering_group_links',
            content: 'bunch of links'
          )
        )
      end
    end

    context 'when block is not present' do
      let(:attributes) do
        { non_content_blocks: [] }
      end

      it 'returns nil' do
        expect(subject.steering_group_links_block).to be_nil
      end
    end
  end

  describe '.strategy_title_block' do
    context 'when block is present' do
      let(:attributes) do
        {
          non_content_blocks: [
            Mas::Cms::Block.new(
              identifier: 'strategy_title',
              content: 'strategy extract'
            )
          ]
        }
      end

      it 'returns strategy title block' do
        expect(subject.strategy_title_block).to eq(
          Mas::Cms::Block.new(
            identifier: 'strategy_title',
            content: 'strategy extract'
          )
        )
      end
    end

    context 'when block is not present' do
      let(:attributes) do
        { non_content_blocks: [] }
      end

      it 'returns nil' do
        expect(subject.strategy_title_block).to be_nil
      end
    end
  end

  describe '.strategy_overview_block' do
    context 'when block is present' do
      let(:attributes) do
        {
          non_content_blocks: [
            Mas::Cms::Block.new(
              identifier: 'strategy_overview',
              content: 'some content'
            )
          ]
        }
      end

      it 'returns strategy overview block' do
        expect(subject.strategy_overview_block).to eq(
          Mas::Cms::Block.new(
            identifier: 'strategy_overview',
            content: 'some content'
          )
        )
      end
    end

    context 'when block is not present' do
      let(:attributes) do
        { non_content_blocks: [] }
      end

      it 'returns nil' do
        expect(subject.strategy_overview_block).to be_nil
      end
    end
  end

  describe '.strategy_link_block' do
    context 'when block is present' do
      let(:attributes) do
        {
          non_content_blocks: [
            Mas::Cms::Block.new(
              identifier: 'strategy_link',
              content: 'some link'
            )
          ]
        }
      end

      it 'returns strategy link block' do
        expect(subject.strategy_link_block).to eq(
          Mas::Cms::Block.new(
            identifier: 'strategy_link',
            content: 'some link'
          )
        )
      end
    end

    context 'when block is not present' do
      let(:attributes) do
        { non_content_blocks: [] }
      end

      it 'returns nil' do
        expect(subject.strategy_link_block).to be_nil
      end
    end
  end
end

