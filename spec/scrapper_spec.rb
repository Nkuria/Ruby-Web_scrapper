require './lib/scrapper.rb'

describe Scrapper do
    let(:scrape1) {Scrapper.new}

    describe '#parser' do
        it 'returns the parsed version of the page' do
            expect(scrape1.parser.respond_to?(:to_s)).to eql(true)
        end
        it 'returns an object type' do
            expect(scrape1.parser.is_a?(Object)).to eql(true)
          end
    end

    describe '#store' do
        it 'returns an array of hotels and should be greater than 0' do
        expect(scrape1.store.nil?).to eql(false)
        end
        it 'returns an array of hotels' do
            expect(scrape1.store.is_a?(Array)).to eql(true)
        end
        it 'returns an array of hotels' do
            expect(scrape1.store.is_a?(String)).to eql(false)
        end
    end

end