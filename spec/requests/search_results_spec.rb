RSpec.describe 'search results' do
  describe 'GET /en/search' do
    context 'when search term is blank' do
      it 'do not perform the search' do
        expect(SiteSearch::Query).to_not receive(:new)
        get '/en/search', params: { query: '' }
      end
    end

    context 'when search term is present' do
      before do
        expect_any_instance_of(SiteSearch::Query).to receive(:results)
          .and_return(results)
      end

      context 'when there are results' do
        let(:results) do
          double(any?: true)
        end

        it 'renders index with results' do
          get '/en/search', params: { query: 'young' }
          expect(response).to render_template(:index_with_results)
        end
      end

      context 'when there are not results' do
        let(:results) { [] }

        it 'renders index with results' do
          get '/en/search', params: { query: 'young' }
          expect(response).to render_template(:index_no_results)
        end
      end
    end
  end
end
