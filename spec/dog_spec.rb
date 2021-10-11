# frozen_string_literal: true

require './lib/dog'

describe Dog do
  describe '#bark' do
    context 'when we told the dog to bark' do
      it 'returns "Woof!"' do
        expect(subject.bark).to eql('Woof!')
      end
    end
  end

  describe '#feed' do
    context 'when the dog is hungry' do
      subject { described_class.new(hunger_level: 7) }

      it 'is no longer hungry' do
        subject.feed
        expect(subject).not_to be_hungry
      end
    end
  end

  describe '#hungry?' do
    context 'when hunger_level is more than 5' do
      subject { described_class.new(hunger_level: 7) }

      it 'returns true' do
        expect(subject).to be_hungry
      end
    end

    context 'when hunger_level is 5 or less' do
      subject { described_class.new(hunger_level: 5) }

      it 'returns false' do
        expect(subject).not_to be_hungry
      end
    end
  end
end
