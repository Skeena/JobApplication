class Job < ApplicationRecord
    belongs_to :user
    mount_uploader :avatar, AvatarUploader
    
    JOB_TYPES = ["Full-time", "Part-time", "Contract", "Freelance"]
    SALARIES = %w[10_000<
                  10_000
                  20_000
                  30_000
                  40_000
                  50_000
                  60_000
                  70_000
                  80_000
                  90_000
                  100_000]
end
