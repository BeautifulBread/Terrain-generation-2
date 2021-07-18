function PerformanceReportClass(desc)
    assert(type(desc) == 'string', desc)
    local self = {
        reports = {},
        desc = desc,
        startTime = nil
    }
    function self.Entry(report)
        assert(report.startTime)
        assert(report.type)
        self.reports[#self.reports + 1] = report
        self.startTime = self.startTime or report.startTime
        return #self.reports
    end
    function self.PrintReport()
        self.totalTime = time() - self.startTime
        print(self.desc .. ':')
        print('-----------')
        for i = 1, #self.reports do
            local report = self.reports[i]
            assert(report.finishTime)
            local reportType = report.type
            local timing = tostring(CoreMath.Round(report.finishTime - report.startTime, 6) * 1000)
            local text =
                reportType ..
                string.rep(' ', math.max(50 - #reportType, 1)) ..
                    timing .. string.rep(' ', math.max(10 - #reportType, 1)) .. 'ms'
            print(text)
        end
        print()
        print(self.desc .. ' took ' .. tostring(CoreMath.Round(self.totalTime, 6) * 1000) .. ' ms')
        print('-----------')
        print()
    end
    return setmetatable(self, self)
end
return PerformanceReportClass
