class MstChart < ApplicationRecord
  belongs_to :mst_music

  enum difficulty: { other: 0, nov: 1, adv: 2, exh: 3, mxm: 4, inf: 5, grv: 6, hvn: 7, vvd: 8 }

  mount_uploader :jacket, ChartJacketUploader
end
