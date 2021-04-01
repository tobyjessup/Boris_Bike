require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end
     it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
  it 'raises an error when full' do
    subject.dock(Bike.new)
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end
end

  it { is_expected.to respond_to :release_bike }
  
  it 'gets bike' do
    # cannot use .release_bike in this currently
    # bike = subject.release_bike
    # expect(Bike.new).to be_working
    expect(Bike.new).to respond_to(:working?)
  end

  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to :bikes }

  it 'should dock bikes' do 
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'should return docked bike' do 
    bike = Bike.new
    subject.dock(bikes)
    expect(subject.bikes).to eq bikes
  end
end
