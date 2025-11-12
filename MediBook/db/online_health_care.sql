CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `gmail` varchar(500) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`c_id`, `name`, `gmail`, `text`, `date`) VALUES
(28, 'merina', 'merina@gmail.com', 'i want to read more articles', '2018-09-18 21:46:36');

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_sender_name` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(5, 0, 'very nice', 'monika@gmail.com', '2018-09-07 18:08:06'),
(6, 0, 'good one', 'anika@gmail.com', '2018-09-07 18:08:40'),
(7, 0, 'nice', 'rabby@gmail.com', '2018-09-07 18:09:40');

 Indexes for table `comment`
--
ALTER TABLE `comment`
ADD PRIMARY KEY (`c_id`);

ALTER TABLE `tbl_comment`
ADD PRIMARY KEY (`comment_id`);



ALTER TABLE `comment`
MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

  ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
