package kopo.poly.service;

import kopo.poly.dto.NoticeDTO;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface INoticeService {

    List<NoticeDTO> getNoticeList() throws Exception;

    NoticeDTO getNoticeInfo(NoticeDTO pDTO, boolean type) throws Exception;

    void insetNoticeInfo(NoticeDTO pDTO) throws Exception;

    @Transactional
    void insertNoticeInfo(NoticeDTO pDTO) throws Exception;

    void updateNoticeInfo(NoticeDTO pDTO) throws Exception;

    void deleteNoticeInfo(NoticeDTO pDTO) throws Exception;
}
